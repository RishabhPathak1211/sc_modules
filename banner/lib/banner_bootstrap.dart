import 'package:banner/services/banner_service.dart';
import 'package:salescode_sdk/salescode_sdk.dart';

class BannerBootstrap implements Bootstrap {
  @override
  Future<void> init() async {
    BannerService bannerService = BannerService();
    ServiceRegistry.registerService<BannerService>(
        bannerService.serviceName, bannerService);
  }
}
