-- CreateTable
CREATE TABLE "Site" (
    "id" SERIAL NOT NULL,
    "display_name" VARCHAR(100) NOT NULL,
    "alias" VARCHAR(32) NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "first_name" VARCHAR(100) NOT NULL,
    "last_name" VARCHAR(100) NOT NULL,
    "username" VARCHAR(100) NOT NULL,
    "email" VARCHAR(100) NOT NULL,
    "site_id" INTEGER NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Site.display_name_unique" ON "Site"("display_name");

-- CreateIndex
CREATE UNIQUE INDEX "Site.alias_unique" ON "Site"("alias");

-- AddForeignKey
ALTER TABLE "User" ADD FOREIGN KEY ("site_id") REFERENCES "Site"("id") ON DELETE CASCADE ON UPDATE CASCADE;
