/*
  Warnings:

  - Added the required column `scopes` to the `Roles` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Roles" ADD COLUMN     "scopes" VARCHAR(255) NOT NULL;
