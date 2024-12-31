/*
  Warnings:

  - You are about to drop the column `startDate` on the `Events` table. All the data in the column will be lost.
  - You are about to drop the column `lessonID` on the `Exam` table. All the data in the column will be lost.
  - Added the required column `startTime` to the `Events` table without a default value. This is not possible if the table is not empty.
  - Added the required column `lessonId` to the `Exam` table without a default value. This is not possible if the table is not empty.
  - Added the required column `birthday` to the `Student` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Exam" DROP CONSTRAINT "Exam_lessonID_fkey";

-- AlterTable
ALTER TABLE "Events" DROP COLUMN "startDate",
ADD COLUMN     "startTime" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "Exam" DROP COLUMN "lessonID",
ADD COLUMN     "lessonId" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Student" ADD COLUMN     "birthday" TIMESTAMP(3) NOT NULL;

-- AddForeignKey
ALTER TABLE "Exam" ADD CONSTRAINT "Exam_lessonId_fkey" FOREIGN KEY ("lessonId") REFERENCES "Lesson"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
