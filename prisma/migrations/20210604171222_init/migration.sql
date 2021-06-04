-- CreateTable
CREATE TABLE "Client" (
    "id" SERIAL NOT NULL,
    "client_id" TEXT NOT NULL,
    "client_secret" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "site_id" INTEGER NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Client.client_id_unique" ON "Client"("client_id");

-- CreateIndex
CREATE UNIQUE INDEX "Client.client_secret_unique" ON "Client"("client_secret");

-- AddForeignKey
ALTER TABLE "Client" ADD FOREIGN KEY ("site_id") REFERENCES "Site"("id") ON DELETE CASCADE ON UPDATE CASCADE;
