/*
  Warnings:

  - A unique constraint covering the columns `[raderCode]` on the table `members` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "members_raderCode_key" ON "members"("raderCode");
