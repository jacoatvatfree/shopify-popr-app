/*
  Warnings:

  - You are about to drop the column `state` on the `QRCode` table. All the data in the column will be lost.
  - Added the required column `title` to the `QRCode` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_QRCode" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "shop" TEXT NOT NULL,
    "productId" TEXT NOT NULL,
    "productHandle" TEXT NOT NULL,
    "productVariantId" TEXT NOT NULL,
    "destination" TEXT NOT NULL,
    "scans" INTEGER NOT NULL DEFAULT 0,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO "new_QRCode" ("createdAt", "destination", "id", "productHandle", "productId", "productVariantId", "scans", "shop") SELECT "createdAt", "destination", "id", "productHandle", "productId", "productVariantId", "scans", "shop" FROM "QRCode";
DROP TABLE "QRCode";
ALTER TABLE "new_QRCode" RENAME TO "QRCode";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
