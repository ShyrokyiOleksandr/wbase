import '../../../kern_domain.dart';

class GetWatchDetailsUseCase {
  final IWatchRepository _iWatchRepository;

  GetWatchDetailsUseCase({
    required IWatchRepository iWatchRepository,
  }) : _iWatchRepository = iWatchRepository;

  Future<Watch> execute(String watchId) async {
    return await _iWatchRepository.getWatchById(watchId);
  }
}
