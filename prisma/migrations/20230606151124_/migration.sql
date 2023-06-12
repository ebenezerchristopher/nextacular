/*
  Warnings:

  - A unique constraint covering the columns `[workspaceId]` on the table `members` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[email]` on the table `members` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "members_workspaceId_email_key";

-- CreateIndex
CREATE UNIQUE INDEX "members_workspaceId_key" ON "members"("workspaceId");

-- CreateIndex
CREATE UNIQUE INDEX "members_email_key" ON "members"("email");
