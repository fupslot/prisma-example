import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient({
  errorFormat: "pretty",
  log: ["info", "query"],
});

const print_json = (v: unknown) => console.log(JSON.stringify(v, null, 2));

async function create_site() {
  const result = await prisma.site.create({
    data: {
      display_name: "example",
      alias: "example",
      users: {
        create: {
          username: "john.doe",
          email: "john.doe@example.net",
          first_name: "john",
          last_name: "doe",
        },
      },
    },
  });

  print_json(result);
}

async function select_user() {
  const user = await prisma.user.findFirst({
    where: {
      username: "john.doe",
      site_id: 1,
    },
  });

  print_json(user);
}

async function create_client() {
  const result = await prisma.client.create({
    data: {
      client_id: "id0",
      client_secret: "secrret0",
      callback: "http://example.example.net/oauth/default/callback",
      site_id: 1,
    },
  });

  print_json(result);
}

async function select_site(alias: string) {
  const site = await prisma.site.findFirst({
    where: {
      alias,
    },
    include: {
      users: true,
      clients: true,
      invites: true,
    },
  });

  print_json(site);
}

async function main() {
  // await select_user();
  // await select_site("john");

  const result = await prisma.site
    .findUnique({
      where: {
        alias: "acme",
      },
    })
    .invites();

  print_json(result);
}

main()
  .catch(console.error)
  .finally(() => {
    prisma.$disconnect();
  });
