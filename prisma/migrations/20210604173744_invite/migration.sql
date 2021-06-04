-- CreateTable
CREATE TABLE "Invite" (
    "id" SERIAL NOT NULL,
    "code" VARCHAR(100) NOT NULL,
    "email" VARCHAR(100) NOT NULL,
    "active" BOOLEAN NOT NULL DEFAULT true,
    "expire_at" TIMESTAMP(3) NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "site_id" INTEGER NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Invite.code_unique" ON "Invite"("code");

-- AddForeignKey
ALTER TABLE "Invite" ADD FOREIGN KEY ("site_id") REFERENCES "Site"("id") ON DELETE CASCADE ON UPDATE CASCADE;
