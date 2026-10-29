# DEĞİŞİKLİK GÜNLÜĞÜ (CHANGELOG)

Tüm önemli değişiklikler, sürüm geliştirmeleri ve düzeltmeler bu belgede kayıt altına alınmaktadır.

---

## [1.0.0] - 2026-10-29

### Eklendi (Added)
- **Algoritmalar ve Şemalar:**
  - `docs/algoritma/ana_algoritma.mmd`
  - `docs/algoritma/gps_konum_algoritmasi.mmd`
  - `docs/algoritma/rota_hesaplama_algoritmasi.mmd`
  - `docs/algoritma/sesli_yonlendirme_algoritmasi.mmd`
  - `docs/algoritma/rota_disi_algoritmasi.mmd`
  - `docs/algoritma/hata_yonetimi.mmd`
- **Çekirdek Geometri ve Matematik Modülleri:**
  - `src/utils/distance.ts`: Haversine mesafesi, doğru parçası ortogonal izdüşümü, çoklu çizgi dik mesafesi.
  - `src/utils/bearing.ts`: İki koordinat arası kerteriz (azimuth), modüler açısal fark, açısal LERP yumuşatma, durağan titreme filtresi.
  - `src/utils/formatters.ts`: Metre/kilometre, süre, ETA varış saati, doğal Türkçe seslendirme metinleri.
- **Servis Katmanı:**
  - `src/services/GeolocationService.ts`: W3C Geolocation API, GPS filtreleme, simülasyon modu.
  - `src/services/RoutingService.ts`: OSRM API istemcisi, alternatif rota desteği, Türkçe manevra üreticisi.
  - `src/services/GeocodingService.ts`: OpenStreetMap Nominatim adres arama, Türkiye öncelikli sonuçlar, yerel önbellek.
  - `src/services/SpeechService.ts`: Web Speech Synthesis (TTS) ve Web Speech Recognition (STT).
- **Navigasyon ve Durum Katmanı:**
  - `src/navigation/ManeuverManager.ts`: Adım adım manevra takibi, mesafe kademeleri (1km, 500m, 300m, 150m, şimdi), deduplication.
  - `src/navigation/RerouteManager.ts`: 45m sapma eşiği, 3 ardışık ping teyidi, 10s throttling.
  - `src/navigation/RouteMatcher.ts`: Harita yol eşleme (20m snapping).
  - `src/navigation/NavigationController.ts`: Merkezi yaşam döngüsü yöneticisi.
  - `src/state/NavigationState.ts`: Reaktif durum yöneticisi.
- **Erişilebilir Görsel Bileşenler:**
  - `src/components/MapView.ts`: Leaflet haritası, CartoDB Voyager / Dark Matter karoları, rota ve manevra katmanları.
  - `src/components/VehicleMarker.ts`: Yüksek kontrastlı, dönen SVG araç oku ve doğruluk halkası.
  - `src/components/SearchBar.ts`: Büyük arama alanı, sesli mikrofon butonu, hızlı favoriler.
  - `src/components/NavigationPanel.ts`: Devasa manevra kartı, seyahat metrikleri, Başlat/Durdur butonları.
  - `src/components/VoiceControls.ts`: Ses aç/kapat, Gece/Gündüz, Araca Dön, Yakınlaştırma.
  - `src/components/InfoTooltip.ts`: Her işlevsel nesne için Türkçe açıklama penceresi ve sesli okuma.
- **Rapor ve Masaüstü Kısayolu:**
  - `docs/raporlar/NAVIGASYON_FORMULLERI_VE_ALGORITMALAR.pdf`
  - `scripts/create_icon.py` & `public/icons/app-icon.ico`
  - Masaüstü kısayolu: `Sesli Navigasyon.lnk`
- **Otomatik Testler:**
  - 36 adet birim ve senaryo testi (Vitest).

