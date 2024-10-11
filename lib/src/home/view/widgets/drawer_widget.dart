import 'package:office_app/core/utils/constants/app_import.dart';
import 'package:office_app/src/frequently_questions/view/frequently_questions_screen.dart';
import 'package:office_app/src/submit_idea/view/submit_idea_screen.dart';
import 'package:office_app/src/subscriptions/view/subscriptions_screen.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: _getDrawerWidth(), // Calculate the drawer width
      backgroundColor: ColorName.white,
      shape: _buildDrawerShape(), // Build the drawer shape
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60),
            _buildLogo(), // Build the logo
            const SizedBox(height: 25),
            _buildDivider(), // Build the divider
            _buildDrawerItems(), // Build the drawer items list
            const SizedBox(height: 50),
            _buildSocialMediaRow(), // Build the social media icons row
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Calculate drawer width
  double _getDrawerWidth() {
    return (Get.width / 1.8) < 200 ? 210 : Get.width / 1.8;
  }

  // Build the drawer shape with rounded corners
  ShapeBorder _buildDrawerShape() {
    return const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(16),
        topLeft: Radius.circular(16),
      ),
    );
  }

  // Build the logo section
  Widget _buildLogo() {
    return Assets.icons.logo.svg();
  }

  // Build the divider between sections
  Widget _buildDivider() {
    return const Divider(
      height: 0,
      color: ColorName.hokeyPokey,
    );
  }

  // Build the list of drawer items
  Widget _buildDrawerItems() {
    return Column(
      children: [
        DrawerItem(
          title: 'اتصال بالدعم الفني',
          icon: Assets.icons.supportCall.svg(),
          activeBorder: false,
          onTap: () {},
        ),
        DrawerItem(
          title: 'مراسلة الدعم الفني',
          icon: Assets.icons.supportWhatsapp.svg(),
          activeBorder: false,
          onTap: () {},
        ),
        DrawerItem(
          title: 'مراسلة الدعم الفني',
          icon: Assets.icons.supportChat.svg(),
          activeBorder: true,
          onTap: () {
            Get.to(() => const SupportChatScreen());
          },
        ),
        DrawerItem(
          title: 'من نحن ؟',
          icon: Assets.icons.whoWe.svg(),
          activeBorder: true,
          onTap: () {
            Get.to(() => const WhoWeScreen());
          },
        ),
        DrawerItem(
          title: 'الشروط و الأحكام',
          icon: Assets.icons.termsConditions.svg(),
          activeBorder: false,
          onTap: () {
            Get.to(() => const TermsConditions());
          },
        ),
        DrawerItem(
          title: 'الأسئلة المتكررة',
          icon: Assets.icons.whoWe.svg(),
          activeBorder: true,
          onTap: () {
            Get.to(() => const FrequentlyQuestionsScreen());
          },
        ),
        DrawerItem(
          title: 'الاشتراكات',
          icon: Assets.icons.subscription.svg(),
          activeBorder: true,
          onTap: () => Get.to(() => const SubscriptionsScreen()),
        ),
        DrawerItem(
          title: 'شارك مع الأصدقاء',
          icon: Assets.icons.friendsShare.svg(),
          activeBorder: true,
          onTap: () {},
        ),
        DrawerItem(
          title: 'تقديم فكره',
          icon: Assets.icons.idea.svg(),
          activeBorder: true,
          onTap: () {
            Get.to(() => const SubmitIdeaScreen());
          },
        ),
      ],
    );
  }

  // Build the social media row at the bottom of the drawer
  Widget _buildSocialMediaRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.icons.tiktok.svg(),
        const SizedBox(width: 20),
        Assets.icons.x.svg(),
        const SizedBox(width: 20),
        Assets.icons.facebook.svg(),
        const SizedBox(width: 20),
        Assets.images.instagram.image(width: 20),
      ],
    );
  }
}
