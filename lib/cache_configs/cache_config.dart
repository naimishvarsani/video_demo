import 'package:flutter_cache_manager/flutter_cache_manager.dart';

const kReelCacheKey = "reelsCacheKey";
final kCacheManager = CacheManager(
  Config(
    kReelCacheKey,
    stalePeriod: const Duration(days: 7),
    maxNrOfCacheObjects: 100,
    repo: JsonCacheInfoRepository(databaseName: kReelCacheKey),
    fileService: HttpFileService(),
  ),
);
