import 'package:kern_domain/kern_domain.dart';

class ScanHistoryItemRM {
  final String id;
  final String watchId;
  final String brand;
  final String model;
  final DateTime date;
  final String photoUrl;

  ScanHistoryItemRM({
    required this.id,
    required this.watchId,
    required this.brand,
    required this.model,
    required this.date,
    required this.photoUrl,
  });

  ScanHistoryItem toDomain() {
    return ScanHistoryItem(
      id: id,
      watchId: watchId,
      brand: brand,
      model: model,
      date: date,
      photoUrl: photoUrl,
    );
  }
}
