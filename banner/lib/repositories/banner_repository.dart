import 'package:banner/models/banner_ui.dart';

abstract class BannerRepository {
  List<BannerUI> getAll();

  Future<void> addAll(List<BannerUI> data);
}
