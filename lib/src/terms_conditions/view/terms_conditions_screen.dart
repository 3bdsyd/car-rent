import 'package:office_app/core/utils/constants/app_import.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'الشروط والأحكام'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildTitleSection('شروط الاستخدام :-'), // Title section
              const SizedBox(height: 16),
              _buildTextSection(), // Text content section
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Builds the title section
  Widget _buildTitleSection(String title) => Row(
        children: [
          _buildVerticalDivider(), // Builds the vertical divider on the left of the title
          _buildTitleText(title), // Builds the title text
        ],
      );

  // Builds the vertical divider on the left of the title
  Widget _buildVerticalDivider() => Container(
        height: 30,
        width: 2,
        color: ColorName.hokeyPokey,
        margin: const EdgeInsets.only(left: 5),
      );

  // Builds the title text
  Widget _buildTitleText(String title) => Text(
        title,
        style: TextStyles.style16.copyWith(
          color: ColorName.downriver,
          fontWeight: FontWeight.w500,
        ),
      );

  // Builds the body text section
  Widget _buildTextSection() => const Text(
        'نحن نستخدم افضل التقنية التي يمكن ان تاعدك في المساقبل نحن نستخدم افضل التقنية التي يمكن ان تاعدك في المساقبل...'
        'نحن نستخدم افضل التقنية التي يمكن ان تاعدك في المساقبل نحن نستخدم افضل التقنية التي يمكن ان تاعدك في المساقبل...',
        style: TextStyles.style12,
      );
}
