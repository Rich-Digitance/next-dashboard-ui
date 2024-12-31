/*
  Warnings:

  - You are about to drop the column `lessonID` on the `Assignment` table. All the data in the column will be lost.
  - Added the required column `lessonId` to the `Assignment` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Assignment" DROP CONSTRAINT "Assignment_lessonID_fkey";

-- AlterTable
ALTER TABLE "Assignment" DROP COLUMN "lessonID",
ADD COLUMN     "lessonId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "Assignment" ADD CONSTRAINT "Assignment_lessonId_fkey" FOREIGN KEY ("lessonId") REFERENCES "Lesson"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
