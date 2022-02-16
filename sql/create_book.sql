DROP TABLE IF EXISTS `page`;
DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
    `id` SERIAL NOT NULL PRIMARY KEY,
    `name` TEXT NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT current_timestamp,
    `status` ENUM('enabled', 'disabled') NOT NULL DEFAULT 'enabled'
);

CREATE TABLE `page` (
    `id` SERIAL NOT NULL PRIMARY KEY,
    `book_id` BIGINT UNSIGNED NOT NULL,
    `page` BIGINT NOT NULL,
    `contents` TEXT NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT current_timestamp,
    `status` ENUM('enabled', 'disabled') NOT NULL DEFAULT 'enabled',
    FOREIGN KEY (`book_id`) REFERENCES `book` (`id`)
);
