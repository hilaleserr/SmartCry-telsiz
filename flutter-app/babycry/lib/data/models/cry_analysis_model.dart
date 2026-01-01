class CyrAnalysis {
  final String cryReason; // Açlık, Uykusuzluk, Rahatsızlık [cite: 18]
  final double confidence; // Doğruluk oranı (Accuracy) [cite: 92]
  final String mobility; // Hareketlilik Skoru [cite: 88]
  final DateTime time;

  CyrAnalysis({
    required this.cryReason,
    required this.confidence,
    required this.mobility,
    required this.time,
  });
}
