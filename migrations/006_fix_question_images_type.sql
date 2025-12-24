-- Migration: Ensure question and explanation images are LONGTEXT for Base64 support
ALTER TABLE `questions` MODIFY COLUMN `question_image` LONGTEXT COLLATE utf8mb4_unicode_ci DEFAULT NULL;
ALTER TABLE `questions` MODIFY COLUMN `explanation_image` LONGTEXT COLLATE utf8mb4_unicode_ci DEFAULT NULL;
