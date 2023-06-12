-- DropIndex
DROP INDEX "members_email_key";

-- AlterTable
ALTER TABLE "members" ADD COLUMN     "raderCode" TEXT NOT NULL DEFAULT '';
