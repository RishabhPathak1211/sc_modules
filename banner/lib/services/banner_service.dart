import 'package:banner/models/banner_ui.dart';
import 'package:banner/repositories/banner_repository.dart';
import 'package:banner/repositories/banner_repository_factory.dart';
import 'package:salescode_sdk/salescode_sdk.dart';

class BannerService extends Service<BannerUI> {
  late BannerRepository _bannerRepository;

  BannerService() {
    _bannerRepository = BannerRepositoryFactory().getRepository();
  }

  @override
  String get serviceName => "BannerService";

  @override
  Future<void> addAll(List<BannerUI> data) async {
    await _bannerRepository.addAll(data);
  }

  @override
  List<BannerUI> getAll() {
    return _bannerRepository.getAll();
  }

  @override
  BannerUI transform(Map<String, dynamic> map) {
    return BannerUI(field1: map["field1"] ?? "", field2: map["field2"] ?? "");
  }
}
