import 'package:office_app/core/utils/constants/app_import.dart';

/// A custom AppBar widget that implements the PreferredSizeWidget.
class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 82,
      backgroundColor: ColorName.white,
      shadowColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      elevation: 5,
      title: _buildAppBarTitle(),
      leading: _buildAppBarLeading(context),
      actions: _buildAppBarActions(),
    );
  }

  /// Builds the AppBar title widget, which consists of a column of texts and a row with an icon.
  Widget _buildAppBarTitle() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'أهلاً بك',
            style: TextStyles.style18,
          ),
          Text(
            'المركبة السريعة',
            style: TextStyles.style14.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Assets.icons.locationMark.svg(),
              const SizedBox(width: 4),
              const Text(
                'جدة / الروش',
                style: TextStyles.style14,
              ),
            ],
          ),
        ],
      );

  /// Builds the leading widget for the AppBar, which is typically the menu button.
  Widget _buildAppBarLeading(BuildContext context) {
    return IconButton(
      icon: Assets.icons.menu.svg(
        height: 30,
        width: 30,
      ), // Menu icon for opening the drawer.
      onPressed: () {
        Scaffold.of(context)
            .openDrawer(); // Opens the drawer when the icon is pressed.
      },
    );
  }

  /// Builds the list of action widgets (e.g., icons) for the AppBar.
  List<Widget> _buildAppBarActions() => [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20), // Adds padding around the car image.
          child: Assets.images.carPart.image(),
        ),
      ];

  /// Defines the preferred size for the AppBar to customize its height.
  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // Default AppBar height.
}
