-- EasyNotes Veritabanı Oluşturma Scripti
-- Bu script MySQL veritabanını ve gerekli tabloyu oluşturur

-- Veritabanını oluştur (eğer yoksa)
CREATE DATABASE IF NOT EXISTS notes_app CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Veritabanını kullan
USE notes_app;

-- Notlar tablosu Spring Boot JPA tarafından otomatik oluşturulacak
-- (application.properties'te spring.jpa.hibernate.ddl-auto=update olduğu için)
-- Ancak manuel oluşturmak isterseniz aşağıdaki scripti kullanabilirsiniz:

/*
CREATE TABLE IF NOT EXISTS notes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
*/

-- Script başarıyla tamamlandı
SELECT 'Veritabanı başarıyla oluşturuldu!' AS message;

