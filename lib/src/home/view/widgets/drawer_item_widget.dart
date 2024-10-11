import 'package:office_app/core/utils/constants/app_import.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.title,
    required this.icon,
    required this.activeBorder,
    required this.onTap,
  });

  final String title;
  final Function() onTap;
  final SvgPicture icon;
  final bool activeBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: _buildDecoration(), // Border decoration section
      child: Column(
        children: [
          _buildItem(), // GestureDetector for tapping on the drawer item
        ],
      ),
    );
  }

  // Builds the container's border decoration
  BoxDecoration _buildDecoration() {
    return BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: ColorName.hokeyPokey.withOpacity(activeBorder ? 1 : .25),
        ),
      ),
    );
  }

  // Builds the GestureDetector for the drawer item
  Widget _buildItem() {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          icon,
          const SizedBox(width: 5),
          Text(
            title,
            style: TextStyles.style14.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
