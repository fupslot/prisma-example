import { roles } from "./seeds/roles";
import { sites } from "./seeds/sites";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
  for (let role of roles) {
    await prisma.roles.create({
      data: role,
    });
  }

  for (let site of sites) {
    await prisma.site.create({
      data: site,
    });
  }
}

main()
  .catch(console.error)
  .finally(() => {
    prisma.$disconnect();
  });
