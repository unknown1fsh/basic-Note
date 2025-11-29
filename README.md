# 📝 EasyNotes - Basit Not Alma Uygulaması

<div align="center">

![Java](https://img.shields.io/badge/Java-11-orange?style=for-the-badge&logo=java)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-2.5.5-brightgreen?style=for-the-badge&logo=spring)
![MySQL](https://img.shields.io/badge/MySQL-8.0-blue?style=for-the-badge&logo=mysql)
![Maven](https://img.shields.io/badge/Maven-3.6+-red?style=for-the-badge&logo=apache-maven)

**Modern ve kullanıcı dostu REST API tabanlı not alma uygulaması**

[Özellikler](#-özellikler) • [Kurulum](#-kurulum) • [Kullanım](#-kullanım) • [API Dokümantasyonu](#-api-dokümantasyonu)

</div>

---

## 📋 İçindekiler

- [Hakkında](#-hakkında)
- [Özellikler](#-özellikler)
- [Teknolojiler](#-teknolojiler)
- [Gereksinimler](#-gereksinimler)
- [Kurulum](#-kurulum)
- [Kullanım](#-kullanım)
- [API Dokümantasyonu](#-api-dokümantasyonu)
- [Proje Yapısı](#-proje-yapısı)
- [Sorun Giderme](#-sorun-giderme)
- [Katkıda Bulunma](#-katkıda-bulunma)
- [Lisans](#-lisans)

---

## 🎯 Hakkında

EasyNotes, Spring Boot ve MySQL kullanılarak geliştirilmiş modern bir REST API tabanlı not alma uygulamasıdır. Hem REST API hem de kullanıcı dostu web arayüzü ile notlarınızı kolayca yönetebilirsiniz.

### ✨ Neden EasyNotes?

- 🚀 **Hızlı ve Kolay**: Basit kurulum ve kullanım
- 🎨 **Modern Arayüz**: Responsive ve kullanıcı dostu web arayüzü
- 🔒 **Güvenli**: REST API ile güvenli veri yönetimi
- 📱 **Responsive**: Mobil ve masaüstü uyumlu tasarım
- 🛠️ **Açık Kaynak**: Eğitim ve geliştirme için uygun

---

## ✨ Özellikler

- ✅ **CRUD İşlemleri**: Notları oluşturma, okuma, güncelleme ve silme
- ✅ **Modern Web Arayüzü**: HTML/CSS/JavaScript ile geliştirilmiş kullanıcı dostu arayüz
- ✅ **REST API**: Tam özellikli RESTful API endpoints
- ✅ **Veritabanı Entegrasyonu**: MySQL ile güvenli veri saklama
- ✅ **Otomatik Tarih Takibi**: Notların oluşturulma ve güncellenme tarihleri otomatik kaydedilir
- ✅ **Responsive Tasarım**: Tüm cihazlarda mükemmel görünüm
- ✅ **CORS Desteği**: Cross-origin istekler için yapılandırılmış

---

## 🛠️ Teknolojiler

Bu proje aşağıdaki teknolojiler kullanılarak geliştirilmiştir:

| Teknoloji | Versiyon | Açıklama |
|-----------|----------|----------|
| **Java** | 11+ | Programlama dili |
| **Spring Boot** | 2.5.5 | Framework |
| **Spring Data JPA** | 2.5.5 | Veritabanı erişim katmanı |
| **MySQL** | 5.7+ / 8.0+ | İlişkisel veritabanı |
| **Maven** | 3.6+ | Proje yönetim aracı |
| **Hibernate** | 5.4.32 | ORM framework |
| **HTML/CSS/JavaScript** | - | Web arayüzü |

---

## 📦 Gereksinimler

Uygulamayı çalıştırmak için aşağıdaki yazılımların yüklü olması gerekir:

- ☕ **Java 11** veya üzeri
- 📦 **Maven 3.6+**
- 🗄️ **MySQL 5.7+** veya **8.0+**
- 🌐 **Web Tarayıcısı** (Chrome, Firefox, Edge, Safari)

---

## 🚀 Kurulum

### Adım 1: Projeyi Klonlayın

```bash
git clone https://github.com/kullaniciadi/basic-Note.git
cd basic-Note
```

### Adım 2: MySQL Veritabanını Oluşturun

MySQL veritabanınızı başlatın ve aşağıdaki komutlardan birini kullanın:

**Yöntem 1: SQL Script ile**
```bash
mysql -u root -p < database/init.sql
```

**Yöntem 2: MySQL Komut Satırı ile**
```sql
CREATE DATABASE IF NOT EXISTS notes_app CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

### Adım 3: Veritabanı Yapılandırması

`src/main/resources/application.properties` dosyasını açın ve veritabanı bilgilerinizi güncelleyin:

```properties
spring.datasource.url=jdbc:mysql://localhost:3306/notes_app?useSSL=false&serverTimezone=UTC&useLegacyDatetimeCode=false
spring.datasource.username=root
spring.datasource.password=SİZİN_ŞİFRENİZ
```

### Adım 4: Projeyi Derleyin

```bash
mvn clean install
```

### Adım 5: Uygulamayı Başlatın

```bash
mvn spring-boot:run
```

Uygulama başarıyla başlatıldığında şu mesajı göreceksiniz:
```
Tomcat started on port(s): 8080 (http)
```

---

## 💻 Kullanım

### Web Arayüzü

1. Tarayıcınızda şu adrese gidin:
   ```
   http://localhost:8080/index.html
   ```

2. **Yeni Not Oluşturma**:
   - Başlık ve içerik alanlarını doldurun
   - "Kaydet" butonuna tıklayın

3. **Not Düzenleme**:
   - Not kartındaki "Düzenle" butonuna tıklayın
   - Bilgileri güncelleyin
   - "Güncelle" butonuna tıklayın

4. **Not Silme**:
   - Not kartındaki "Sil" butonuna tıklayın
   - Onay mesajını kabul edin

### REST API Kullanımı

API'yi doğrudan kullanmak için aşağıdaki endpoint'leri kullanabilirsiniz:

**Base URL**: `http://localhost:8080/api`

---

## 📚 API Dokümantasyonu

### Tüm Notları Listele

```http
GET /api/notes
```

**Örnek İstek:**
```bash
curl http://localhost:8080/api/notes
```

**Örnek Yanıt:**
```json
[
  {
    "id": 1,
    "title": "İlk Not",
    "content": "Bu benim ilk notum",
    "createdAt": "2025-11-30T00:00:00.000+00:00",
    "updatedAt": "2025-11-30T00:00:00.000+00:00"
  }
]
```

### Yeni Not Oluştur

```http
POST /api/notes
Content-Type: application/json
```

**Örnek İstek:**
```bash
curl -X POST http://localhost:8080/api/notes \
  -H "Content-Type: application/json" \
  -d '{
    "title": "Yeni Not",
    "content": "Not içeriği buraya gelir"
  }'
```

**Örnek Yanıt:**
```json
{
  "id": 2,
  "title": "Yeni Not",
  "content": "Not içeriği buraya gelir",
  "createdAt": "2025-11-30T00:00:00.000+00:00",
  "updatedAt": "2025-11-30T00:00:00.000+00:00"
}
```

### Not Detayı Getir

```http
GET /api/notes/{id}
```

**Örnek İstek:**
```bash
curl http://localhost:8080/api/notes/1
```

### Not Güncelle

```http
PUT /api/notes/{id}
Content-Type: application/json
```

**Örnek İstek:**
```bash
curl -X PUT http://localhost:8080/api/notes/1 \
  -H "Content-Type: application/json" \
  -d '{
    "title": "Güncellenmiş Başlık",
    "content": "Güncellenmiş içerik"
  }'
```

### Not Sil

```http
DELETE /api/notes/{id}
```

**Örnek İstek:**
```bash
curl -X DELETE http://localhost:8080/api/notes/1
```

**Yanıt:** `200 OK`

---

## 📁 Proje Yapısı

```
basic-Note/
├── 📂 database/
│   └── init.sql                 # Veritabanı oluşturma scripti
├── 📂 src/
│   ├── 📂 main/
│   │   ├── 📂 java/com/example/easynotes/
│   │   │   ├── EasyNotesApplication.java    # Ana uygulama sınıfı
│   │   │   ├── 📂 config/
│   │   │   │   ├── CorsFilter.java          # CORS filter
│   │   │   │   └── WebConfig.java           # Web yapılandırması
│   │   │   ├── 📂 controller/
│   │   │   │   ├── NoteController.java      # REST API controller
│   │   │   │   └── IndexController.java      # Ana sayfa controller
│   │   │   ├── 📂 model/
│   │   │   │   └── Note.java                # Not entity modeli
│   │   │   ├── 📂 repository/
│   │   │   │   └── NoteRepository.java      # JPA repository
│   │   │   └── 📂 exception/
│   │   │       └── ResourceNotFoundException.java
│   │   └── 📂 resources/
│   │       ├── application.properties        # Uygulama ayarları
│   │       └── 📂 static/
│   │           └── index.html               # Web arayüzü
│   └── 📂 test/
│       └── EasyNotesApplicationTests.java
├── pom.xml                                    # Maven yapılandırması
├── README.md                                  # Bu dosya
└── .gitignore                                # Git ignore dosyası
```

---

## 🔧 Sorun Giderme

### Veritabanı Bağlantı Hatası

**Sorun:** `Unknown database 'notes_app'`

**Çözüm:**
```bash
mysql -u root -p -e "CREATE DATABASE notes_app CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
```

### Port 8080 Kullanımda

**Sorun:** `Port 8080 is already in use`

**Çözüm:** `application.properties` dosyasında portu değiştirin:
```properties
server.port=8081
```

### CORS Hatası

**Sorun:** Tarayıcıda CORS hatası görüyorsunuz

**Çözüm:** Uygulama zaten CORS yapılandırması içeriyor. Tarayıcı cache'ini temizleyin (Ctrl+Shift+Delete).

### 403 Forbidden Hatası

**Sorun:** API çağrılarında 403 hatası

**Çözüm:** 
1. Uygulamayı yeniden başlatın
2. Tarayıcı cache'ini temizleyin
3. `CorsFilter` sınıfının doğru çalıştığından emin olun

---

## 🤝 Katkıda Bulunma

Katkılarınızı bekliyoruz! Projeyi geliştirmek için:

1. ⭐ Projeyi yıldızlayın
2. 🍴 Fork edin
3. 🌿 Yeni bir branch oluşturun (`git checkout -b feature/amazing-feature`)
4. 💾 Değişikliklerinizi commit edin (`git commit -m 'Add some amazing feature'`)
5. 📤 Branch'inizi push edin (`git push origin feature/amazing-feature`)
6. 🔄 Pull Request oluşturun

### Katkıda Bulunma Kuralları

- Kod yazarken Java naming conventions'a uyun
- Yeni özellikler için test yazın
- README.md'yi güncelleyin
- Commit mesajlarınızı açıklayıcı yazın

---

## 📄 Lisans

Bu proje eğitim amaçlı geliştirilmiştir ve açık kaynak kodludur. İstediğiniz gibi kullanabilir, değiştirebilir ve dağıtabilirsiniz.

---

## 👨‍💻 Geliştirici

Bu proje eğitim ve öğrenme amaçlı geliştirilmiştir.

---

## 🙏 Teşekkürler

- [Spring Boot](https://spring.io/projects/spring-boot) - Harika framework
- [MySQL](https://www.mysql.com/) - Güvenilir veritabanı
- Tüm açık kaynak topluluğu

---

<div align="center">

**⭐ Bu projeyi beğendiyseniz yıldız vermeyi unutmayın! ⭐**

Made with ❤️ using Spring Boot

</div>
