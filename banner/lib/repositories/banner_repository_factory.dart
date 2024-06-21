import 'package:banner/repositories/banner_repository.dart';
import 'package:banner/repositories/banner_repository_hive.dart';
import 'package:banner/repositories/banner_repository_objectbox.dart';
import 'package:salescode_sdk/salescode_sdk.dart';

class BannerRepositoryFactory implements RepositoryFactory<BannerRepository> {
  @override
  BannerRepository getRepository() {
    Env? env = Environment.getEnvironment();
    switch (env.name) {
      case "objectbox":
        {
          return BannerRepositoryObjectbox();
        }
      case "hive":
        {
          return BannerRepositoryHive();
        }
      default:
        {
          throw Error();
        }
    }
  }
}
