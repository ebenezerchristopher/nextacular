-- DropForeignKey
ALTER TABLE "members" DROP CONSTRAINT "members_workspaceId_fkey";

-- AddForeignKey
ALTER TABLE "members" ADD CONSTRAINT "members_workspaceId_fkey" FOREIGN KEY ("workspaceId") REFERENCES "workspaces"("id") ON DELETE CASCADE ON UPDATE CASCADE;
