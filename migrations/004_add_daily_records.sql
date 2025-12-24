CREATE TABLE IF NOT EXISTS `daily_records` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `record_date` date NOT NULL,
  `attendance` tinyint(1) DEFAULT '0',
  `task1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_mark` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_student_date` (`student_id`, `record_date`),
  CONSTRAINT `daily_records_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`uid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
