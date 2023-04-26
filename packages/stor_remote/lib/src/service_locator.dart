//import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:repo_scan_history/repo_scan_history.dart';
import 'package:repo_watch/repo_watch.dart';
import 'package:stor_remote/src/supabase_remote_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RemoteStorageServiceLocator {
  const RemoteStorageServiceLocator._();

  static Future<void> setup() async {
    await Supabase.initialize(
      url: 'https://vvkubqmwiavvilnlqwmh.supabase.co',
      anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9'
          '.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ2a3VicW13aWF2dmlsbmxxd21oIiwicm9sZSI6ImFub24iLCJpYXQiOjE2Nzk4NTMyMzcsImV4cCI6MTk5NTQyOTIzN30.b_uEMure0NKFxLZTafaAw8nJZFZVwmvZ0rLXf6_TU1s',
      debug: true,
    );

    GetIt.I.registerSingleton<SupabaseClient>(
      Supabase.instance.client,
    );

    GetIt.I.registerFactory<IWatchRemoteStorage>(
      // todo: replace with REST API implementation when ready
      () => SupabaseRemoteStorage(
        supabaseClient: GetIt.I<SupabaseClient>(),
      ),
    );

    GetIt.I.registerFactory<IScanHistoryRemoteStorage>(
      // todo: replace with REST API implementation when ready
      () => SupabaseRemoteStorage(
        supabaseClient: GetIt.I<SupabaseClient>(),
        // firebaseStorage: GetIt.I<FirebaseStorage>(),
      ),
    );
  }
}
