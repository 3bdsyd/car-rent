import 'package:office_app/core/utils/constants/app_import.dart';

class WhoWeScreen extends StatelessWidget {
  const WhoWeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'من نحن'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildIntroductionSection(), // Section for "نبذة تعريفية"
              const SizedBox(height: 20),
              _buildCommercialRegisterSection(), // Section for "السجل التجاري"
              const SizedBox(height: 20),
              _buildLocationSection(), // Section for "الموقع"
              const SizedBox(height: 20),
              _buildOutsideOfficeSection(), // Section for "صورة خارج المكتب"
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Section for "نبذة تعريفية"
  Column _buildIntroductionSection() {
    return Column(
      children: [
        itemTitle('نبذة تعريفية'),
        const SizedBox(height: 16),
        const Text(
          'نبذة تعريفية عن الشركة نبذة تعريفية عن الشركة نبذة تعريفية عن الشركة',
          style: TextStyles.style12,
        ),
        const Text(
          'نبذة تعريفية عن الشركة نبذة تعريفية عن الشركة نبذة تعريفية عن الشركة',
          style: TextStyles.style12,
        ),
        const Text(
          'نبذة تعريفية عن الشركة نبذة تعريفية عن الشركة نبذة تعريفية عن الشركة',
          style: TextStyles.style12,
        ),
        const Text(
          'نبذة تعريفية عن الشركة نبذة تعريفية عن الشركة نبذة تعريفية عن الشركة',
          style: TextStyles.style12,
        ),
        const Text(
          'نبذة تعريفية عن الشركة نبذة تعريفية عن الشركة نبذة تعريفية عن الشركة',
          style: TextStyles.style12,
        ),
        const Text(
          'نبذة تعريفية عن الشركة نبذة تعريفية عن الشركة نبذة تعريفية عن الشركة',
          style: TextStyles.style12,
        ),
      ],
    );
  }

  // Section for "السجل التجاري"
  Column _buildCommercialRegisterSection() {
    return Column(
      children: [
        itemTitle('السجل التجاري'),
        const SizedBox(height: 16),
        Assets.images.commercialRegister.image(),
      ],
    );
  }

  // Section for "الموقع"
  Column _buildLocationSection() {
    return Column(
      children: [
        itemTitle('الموقع'),
        const SizedBox(height: 16),
        Assets.images.site.image(),
      ],
    );
  }

  // Section for "صورة خارج المكتب"
  Column _buildOutsideOfficeSection() {
    return Column(
      children: [
        itemTitle('صورة خارج المكتب'),
        const SizedBox(height: 16),
        Assets.images.outsideOffice.image(),
      ],
    );
  }

  // Build the title for each section
  Widget itemTitle(String title) => Row(
        children: [
          Container(
            height: 30,
            width: 2,
            color: ColorName.hokeyPokey,
            margin: const EdgeInsets.only(left: 5),
          ),
          Text(
            title,
            style: TextStyles.style16.copyWith(
              color: ColorName.downriver,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      );
}
