import 'dart:io';

import 'package:kern_domain/kern_domain.dart';
import 'package:repo_scan_history/repo_scan_history.dart';
import 'package:repo_watch/repo_watch.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'models/scan_history_item/scan_history_item_rm.dart';
import 'models/watch/watch_rm.dart';

class SupabaseRemoteStorage
    implements IWatchRemoteStorage, IScanHistoryRemoteStorage {
  static const _watchesTableKey = "watches";
  static const _historyTableKey = "history";
  static const _historyPhotosBucketKey = "scan-history-photos";

  final SupabaseClient _supabaseClient;

  SupabaseRemoteStorage({
    required SupabaseClient supabaseClient,
  }) : _supabaseClient = supabaseClient;

  @override
  Future<WatchRM> getWatchById(String id) async {
    try {
      final response =
          await _supabaseClient.from(_watchesTableKey).select<Map<String, dynamic>?>().eq('id', id).single();
      if (response == null) {
        throw AppException("Упс, нажаль не вдалось визначити ваш годинник");
      }
      final watchRM = WatchRM.fromJson(response);
      return watchRM;
    } on Exception catch (_) {
      throw AppException("Упс, нажаль не вдалось знайти данні про ваш годинник");
    }
  }

  @override
  Future<String> uploadWatchPhoto({
    required String remoteFileName,
    required String localFilePath,
  }) async {
    try {
      final photoFile = File(localFilePath);
      final remoteFilePath = await _supabaseClient.storage.from(_historyPhotosBucketKey).upload(
            '$remoteFileName.png',
            photoFile,
            fileOptions: const FileOptions(cacheControl: '3600', upsert: false),
          );
      return '${_supabaseClient.storageUrl}/object/public/$remoteFilePath';
    } on Exception catch (exception, s) {
      print("$exception: =======> $s");
      rethrow;
    }
  }

  @override
  Future<void> addToHistory(ScanHistoryItemRM scanHistoryItemRM) async {
    try {
      await _supabaseClient.from(_historyTableKey).insert({
        "id": scanHistoryItemRM.id,
        "watchId": scanHistoryItemRM.watchId,
        "brand": scanHistoryItemRM.brand,
        "model": scanHistoryItemRM.model,
        "date": scanHistoryItemRM.date.toIso8601String(),
        "image_url": scanHistoryItemRM.photoUrl,
      });
    } on Exception catch (_) {
      throw AppException("Упс, нажаль не вдалось додати годинник до історії");
    }
  }

  @override
  Future<List<ScanHistoryItemRM>> getHistory() async {
    try {
      final rawHistory = await _supabaseClient.from(_historyTableKey).select<List<Map<String, dynamic>>>();
      return rawHistory
          .map(
            (e) => ScanHistoryItemRM(
              id: e['id'],
              watchId: e['watchId'],
              brand: e['brand'],
              model: e['model'],
              date: DateTime.parse(e['date']),
              photoUrl: e['image_url'],
            ),
          )
          .toList();
    } on Exception catch (_) {
      throw AppException("Упс, нажаль не вдалось завантажити історію");
    }
  }


}
