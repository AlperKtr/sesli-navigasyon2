# Görme Güçlüğü Yaşayan Kullanıcılar İçin Sade, Sesli ve GPS Destekli Navigasyon Sistemi

[![Build Status](https://img.shields.io/badge/Build-Passing-brightgreen)]()
[![Tests](https://img.shields.io/badge/Tests-36%20Passed-success)]()
[![TypeScript](https://img.shields.io/badge/TypeScript-5.6-blue)]()
[![Accessibility](https://img.shields.io/badge/WCAG-2.1%20AAA-gold)]()
[![License](https://img.shields.io/badge/License-MIT-lightgrey)]()

Görme güçlüğü yaşayan veya az gören kullanıcıların güvenli, bağımsız ve rahat seyahat edebilmeleri için özel olarak tasarlanmış; sadeleştirilmiş, yüksek kontrastlı, Türkçe sesli yönlendirmeli ve GPS destekli modern bir navigasyon web uygulamasıdır.

---

## 🌟 Öne Çıkan Özellikler

1. **Erişilebilir ve Sade Arayüz:** Gereksiz reklam, karmaşık menü ve minik butonlardan arındırılmış; WCAG 2.1 AAA kontrast oranına sahip büyük yazılar ve devasa dokunmatik butonlar.
2. **Doğal Türkçe Sesli Yönlendirme:** Manevra mesafelerine göre (1 km, 500 m, 300 m, 150 m, şimdi) akıllı ve mükerrer olmayan sesli anonslar ("Navigasyon başlatıldı", "300 metre sonra sağa dön", "Hedefinize ulaştınız").
3. **Sesle Söyle Arama (STT):** Arama çubuğundaki mikrofon butonuyla hedefinizi klavye kullanmadan sesle söyleyebilme imkânı.
4. **Gerçek GPS ve Dönen Araç Oku:** GPS donanımına bağlı hareket eden, durağan titremelerden arındırılmış ve hareket açısına göre dönen yüksek kontrastlı 3D SVG araç oku.
5. **Otomatik Rota Dışı Algılama (Reroute):** Dönüş kaçırıldığında 45 metre dik mesafe ve 3 ardışık teyit ile otomatik olarak yeni rota hesaplama (*"Dönüşünü kaçırdın. Yeni rota hesaplanıyor."*).
6. **Her Nesnede Bilgi İmleci (ℹ️):** Anlaşılmayan her buton ve ölçümün yanında sade Türkçe açıklama ve sesli okuma penceresi.
7. **Türkiye Geneli Kapsama:** Şehir içi sokaklardan şehirler arası otoyollara (İstanbul - Ankara, İzmir vb.) tüm Türkiye yol ağı ve adres arama desteği.
8. **Masaüstü Simülasyon Test Modu:** Bilgisayar başında rota sürüşünü kontrollü hızda test edebilme yeteneği.
9. **Masaüstü Kısayolu ve Özel İkon:** Windows masaüstüne tek tıkla başlatan kısayol (`Sesli Navigasyon.lnk`) ve çok çözünürlüklü `.ico` ikonu.

---

## 🚀 Hızlı Başlangıç

### Gereksinimler
- Node.js (v18+) ve güncel bir web tarayıcısı (Chrome, Edge, Safari, Firefox).
- Python 3.10+ (PDF raporunu üretmek için, opsiyonel).

### Kurulum ve Çalıştırma
```bash
# 1. Proje dizinine geçin
cd navigasyon

# 2. Bağımlılıkları yükleyin
npm install

# 3. Geliştirme sunucusunu başlatın
npm run dev
```
Tarayıcınızda `http://localhost:5173` adresini açınız.

---

## 🧪 Testler ve Doğrulama
Uygulama Vitest test çatısı ile 36 adet otomatik testten başarıyla geçmiştir:
```bash
npm test
```
- Mesafe ve Haversine formülü testleri (14 test)
- Biçimlendiriciler ve konuşma metinleri (4 test)
- Türkçe manevra üretimi ve OSRM adımları (5 test)
- Manevra takibi ve sesli uyarı kademeleri (5 test)
- Rota dışı eşik ve debounce testleri (4 test)
- Türkiye geneli sürüş rotası ve arama kabul senaryoları (4 test)

---

## 📐 Matematiksel Formüller ve Algoritmalar PDF Raporu
Projede kullanılan tüm matematiksel formüller (Haversine, Bearing, Cross-Track Distance, LERP, Reroute Throttling, ETA) teknik bir PDF raporu olarak derlenmiştir:
- `docs/raporlar/NAVIGASYON_FORMULLERI_VE_ALGORITMALAR.pdf`

Raporu komut satırından yeniden oluşturmak için:
```bash
npm run generate-pdf
```

---

## 📂 Dokümantasyon Dizini

- **Algoritma Akış Şemaları:** `docs/algoritma/` (Mermaid akış şemaları: `ana_algoritma.mmd`, `gps_konum_algoritmasi.mmd`, `rota_hesaplama_algoritmasi.mmd`, `sesli_yonlendirme_algoritmasi.mmd`, `rota_disi_algoritmasi.mmd`, `hata_yonetimi.mmd`)
- **Sistem Mimarisi:** `docs/mimari/MIMARI_TASARIM.md`
- **Kütüphane Envanteri ve Analizleri:** `docs/kutuphaneler/`
- **Modül ve Fonksiyon Rehberi:** `docs/kod-aciklamalari/MODUL_VE_FONKSIYON_REHBERI.md`
- **Kullanım ve Kurulum Kılavuzları:** `docs/kullanim-kilavuzu/`
- **Son Teslim Raporu:** `docs/raporlar/SON_TESLIM_RAPORU.md`

---

## 📄 Lisans
Bu proje MIT lisansı ile lisanslanmıştır. Kullanılan harita verileri © OpenStreetMap contributors (ODbL) ve CARTO sağlayıcılarına aittir.

