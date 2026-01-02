👶 SmartCry: Yapay Zekâ Tabanlı Akıllı Bebek Analiz Sistemi
SmartCry, bebeklerin ağlama seslerini gerçek zamanlı analiz ederek nedenini (açlık, ağrı, uykusuzluk vb.) belirleyen ve ebeveynlere mobil uygulama üzerinden bildirim sunan IoT tabanlı bir araştırma projesidir. Bu çalışma, TÜBİTAK 2209-A programı kapsamında desteklenmektedir.

🛠️ 1. Gereksinim Analizi (Requirement Analysis)
A. İşlevsel Gereksinimler (Functional Requirements)
Ses Analizi: Cihaz, bebek ağlamasını %80+ doğrulukla sınıflandırmalıdır.

Görüntü İşleme: Bebek hareketliliği ESP32-CAM üzerinden anlık takip edilmelidir.

Anlık Bildirim: Analiz sonucu 3 saniye içerisinde ebeveynin mobil uygulamasına iletilmelidir.

Veri Yönetimi: Geçmiş analiz sonuçları Firebase üzerinden saklanmalı ve görüntülenebilmelidir.

B. İşlevsel Olmayan Gereksinimler (Non-Functional Requirements)
Güvenlik ve Gizlilik: Görüntü ve ses verileri bulutta saklanmaz, analiz "Edge Computing" (cihaz üzerinde) yöntemiyle yapılır.

Performans: Sistem düşük gecikmeli (low latency) çalışmalıdır.

Kullanılabilirlik: Mobil arayüz, teknik bilgisi olmayan ebeveynler için sade olmalıdır.

🎭 2. Use-Case ve Kullanıcı Etkileşimi
Kullanıcı Kimlere Hizmet Veriyor?

Ebeveynler: Bebeğinin ihtiyacını anlamakta zorlanan veya uzaktan takip etmek isteyen ebeveynler.

Bakıcılar: Bebeğin konforunu ve güvenliğini sağlamakla görevli kişiler.

Ana Senaryo (Main Scenario)
Bebek ağlamaya başlar.

ESP32-CAM üzerindeki I2S mikrofon sesi yakalar.

Cihaz üzerindeki TinyML modeli sesi analiz eder (Açlık/Ağrı/Uyku).

Eş zamanlı olarak kamera, bebeğin hareketlilik skorunu belirler.

Sonuç Wi-Fi üzerinden Firebase'e, oradan Flutter uygulamasına düşer.

Ebeveyn telefonunda "Bebeğiniz acıkmış olabilir" bildirimini görür.

📊 3. Akış Diyagramı (Flowchart) ve Mimari
Sistem, ses sinyalinin alınmasından mobil bildirime kadar şu yolu izler:

📂 4. Dosya Yapısı ve Görevleri
├── ai_model/              # Python: MFCC öznitelik çıkarımı ve CNN model eğitim scriptleri
├── esp32_firmware/        # C++: ESP32-CAM, I2S Mikrofon ve TinyML entegrasyonu
├── flutter-app/           # Dart: Flutter mobil uygulama kaynak kodları
├── docs/                  # UML Diyagramları, Gereksinim Analizi ve TÜBİTAK Belgeleri
└── README.md              # Ana proje dökümantasyonu

🚀 5. Kurulum ve Çalıştırma Rehberi (Adım Adım)
A. Projeyi Klonlama (Repo Alımı)
Masaüstünde terminali açın ve şu komutu yazarak projeyi bilgisayarınıza indirin:
git clone https://github.com/hilaleserr/SmartCry-telsiz.git
cd SmartCry-telsiz

B. VS Code ile Çalıştırma (Python/AI Katmanı)
VS Code'da ai_model klasörünü açın.

Gerekli kütüphaneleri terminalden yükleyin:
pip install librosa tensorflow numpy matplotlib scikit-learn


Paylaşılan preprocess.py dosyasını açıp çalıştırarak öznitelik çıkarımını test edin.

C. Mobil Uygulama (Flutter Katmanı)
VS Code'da flutter-app klasörünü açın.

Terminalden paketleri çekin:
flutter pub get

Android Studio Emulator veya fiziksel cihaz bağlayarak projeyi başlatın:
flutter run

D. Donanım (ESP32 Katmanı)
Arduino IDE'de "AI Thinker ESP32-CAM" kartını seçin.

esp32_firmware içindeki kodu açın, Wi-Fi ve Firebase bilgilerinizi güncelleyin.

"Upload" diyerek kodu cihaza yükleyin.

👥 Ekip Bilgileri
Danışman: Hüseyin YANIK (Mersin Üniversitesi)

Yürütücü: Gülsu KÜÇÜK

Araştırmacılar: Hilal Şuheda ESER, Meysem BAKİR, Bilge BEKTAŞ, Çağla KUŞ










