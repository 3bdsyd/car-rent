import 'package:office_app/core/utils/constants/app_import.dart';

class HomeData {
  final int number;
  final String title;
  final SvgPicture icon;
  final String? subTitle;
  final Function() onTap;

  HomeData({
    required this.number,
    required this.title,
    required this.icon,
    required this.onTap,
    this.subTitle,
  });
}
