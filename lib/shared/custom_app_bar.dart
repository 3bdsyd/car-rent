import 'package:office_app/core/utils/constants/app_import.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.showAction,
  });

  final String title;
  final bool? showAction;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: ColorName.white,
        title: _buildTitle(), // Title section
        centerTitle: true,
        leading: _buildLeadingButton(), // Back button section
        actions: showAction ?? true
            ? [
                const SizedBox(width: 10),
                _buildActions(), // Custom actions section
              ]
            : null);
  }

  // Title section
  Widget _buildTitle() {
    return FittedBox(
      child: Text(
        title,
        style: TextStyles.style16.copyWith(
          color: ColorName.downriver,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  // Leading (back button) section
  Widget _buildLeadingButton() {
    return IconButton(
      onPressed: () {
        Get.back();
      },
      icon: Assets.icons.arrowBack.svg(fit: BoxFit.scaleDown),
    );
  }

  // Custom actions section (information on the right side)
  Widget _buildActions() {
    return const Padding(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'المركبة الرابعة',
            style: TextStyles.style13,
          ),
          Text(
            'تبوك / الامير سلطان',
            style: TextStyles.style13,
          ),
        ],
      ),
    );
  }

  /// Defines the preferred size for the AppBar to customize its height.
  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // Default AppBar height.
}
