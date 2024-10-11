import 'package:office_app/core/utils/constants/app_import.dart';
import 'package:office_app/src/analysis/view/analysis_screen.dart';
import 'package:office_app/src/cars/view/cars_screen.dart';
import 'package:office_app/src/home/view/widgets/message_dialog.dart';
import 'package:office_app/src/messages_special_requests/view/messages_special_requests_screen.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      decoration:
          _buildContainerBoxDecoration(), // Build the container's decoration
      child: _buildRowBody(), // Build the row containing icons
    );
  }

  // Build the decoration for the container (background, shadow, etc.)
  BoxDecoration _buildContainerBoxDecoration() => BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.5),
            spreadRadius: 5,
            blurRadius: 5,
          ),
        ],
      );

  // Build the row containing icons and gesture detectors
  Widget _buildRowBody() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              // Handle tap event for building icon
            },
            child: Assets.icons.building.svg(),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => const MessagesSpecialRequestsScreen());
            },
            child: Assets.icons.caht.svg(),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => const CarsScreen());
            },
            child: Assets.icons.car.svg(),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => const AnalysisScreen());
            },
            child: Assets.icons.waterfallLight.svg(),
          ),
        ],
      );
}
