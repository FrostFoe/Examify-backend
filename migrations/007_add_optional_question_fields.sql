-- Migration: Add optional fields to questions table
ALTER TABLE `questions` 
  ADD COLUMN `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL AFTER `explanation_image`,
  ADD COLUMN `paper` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL AFTER `subject`,
  ADD COLUMN `chapter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL AFTER `paper`,
  ADD COLUMN `highlight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL AFTER `chapter`;
