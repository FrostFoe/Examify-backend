-- Migration: Add description and course_name to exams table
ALTER TABLE `exams` ADD COLUMN `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL AFTER `name`;
ALTER TABLE `exams` ADD COLUMN `course_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL AFTER `description`;
