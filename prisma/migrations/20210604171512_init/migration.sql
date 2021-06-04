/*
  Warnings:

  - You are about to alter the column `client_id` on the `Client` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(100)`.
  - You are about to alter the column `client_secret` on the `Client` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(100)`.
  - Added the required column `callback` to the `Client` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Client" ADD COLUMN     "callback" VARCHAR(255) NOT NULL,
ALTER COLUMN "client_id" SET DATA TYPE VARCHAR(100),
ALTER COLUMN "client_secret" SET DATA TYPE VARCHAR(100);
