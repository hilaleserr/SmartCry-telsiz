👶 SmartCry: Yapay Zekâ Tabanlı Akıllı Bebek Analiz Sistemi

SmartCry, bebeklerin ağlama seslerini gerçek zamanlı analiz ederek nedenini belirleyen ve ebeveynlere mobil uygulama üzerinden bildirim sunan IoT tabanlı bir projedir. 
Mersin Üniversitesi bünyesinde yürütülen bu çalışma, düşük maliyetli ve taşınabilir bir yerli prototip sunmayı amaçlamaktadır.

📋 Proje Özeti
Bebekler ihtiyaçlarını sözel ifade edemedikleri için ağlama, temel bir iletişim aracıdır.
Bu proje, ebeveynlerin stresini azaltmak ve asfiksi (nefessiz kalma) gibi hayati riskleri erken tespit etmek amacıyla yapay zekâ tabanlı bir analiz sistemi sunar.
Sistem, %36,7 oranla en yüksek bebek ölümü nedeni olan asfiksiye karşı erken uyarı mekanizması olarak tasarlanmıştır.

🌟 Öne Çıkan Özellikler

🔍 Akıllı Ses Sınıflandırma: Bebek ağlamalarını CNN modelleri kullanarak açlık, uyku ihtiyacı ve rahatsızlık kategorilerine ayırır.

🧠 Edge AI (TinyML): Analiz, internete ihtiyaç duymadan doğrudan ESP32 mikrodenetleyici üzerinde gerçekleşir.

📷 Kamera Entegrasyonu: Bebek hareketliliği ve pozisyonu analiz edilerek ses sonucuyla birleştirilir.

📱 Mobil Bildirim: Flutter ile geliştirilen uygulama üzerinden ebeveyne anlık anlamlı bildirimler iletilir.

🔒 Gizlilik ve Güvenlik: Veriler cihaz üzerinde işlenir (edge computing), aile mahremiyeti korunur.

🏗️ Sistem Mimarisi
Araştırma önerisinde belirtilen Sistem Akışı Şeması uyarınca mimari şu şekildedir:

Analiz Katmanı (Python): librosa kullanılarak MFCC ve Mel-Spektrogram öznitelikleri çıkarılır, CNN modeli eğitilir.

Donanım Katmanı (ESP32): Eğitilen model TensorFlow Lite Micro (TinyML) formatına dönüştürülerek donanıma gömülür.

Haberleşme Katmanı: Wi-Fi üzerinden Firebase kullanılarak cihaz ve mobil uygulama arasında veri köprüsü kurulur.

Arayüz Katmanı (Flutter): Analiz sonuçları ve canlı görüntü ebeveyne sunulur.

📂 Dosya Yapısı
Bash

├── ai_model/              # Python: MFCC öznitelik çıkarımı ve CNN model eğitim scriptleri 
├── esp32_firmware/        # C++: ESP32-CAM, I2S Mikrofon ve TinyML entegrasyonu [cite: 252, 272]
├── flutter-app/           # Dart: Flutter mobil uygulama kaynak kodları [cite: 254, 272]
├── docs/                  # Proje şemaları, araştırma önerisi ve TÜBİTAK belgeleri [cite: 3]
└── README.md              # Proje dökümantasyonu


📊 Teknik Detaylar (Ön İşleme)Projede kullanılan MFCC öznitelik çıkarımı mantığı şöyledir15:
Örnekleme Hızı ($sr$): 16000 Hz
MFCC Sayısı: 40.
Z-Score Normalizasyonu: Gürültü etkisini azaltmak ve model başarısını artırmak için uygulanır.

👥 Ekip ve Danışman
Danışman: Hüseyin Yanık (Mersin Üniversitesi) 

Yürütücü: Gülsu Küçük 

Araştırmacılar: Hilal Şuheda Eser, Meysem Bakır, Bilge Bektaş, Çağla Kuş

Bu Dosyayı GitHub'a Nasıl Atarsın?
Masaüstündeki SmartCry klasöründe sağ tıkla -> Git Bash Here.

Şu komutları sırasıyla yaz:
# Not defteri ile açıp yukarıdaki metni README.md içine kaydet, sonra:
git add README.md
git commit -m "Profesyonel README dökümantasyonu eklendi"
git push origin main






















