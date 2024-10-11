import 'package:office_app/core/utils/constants/app_import.dart';
import 'package:office_app/src/deleted_cars/view/deleted_cars_screen.dart';

class CarsScreen extends StatelessWidget {
  const CarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'السيارات'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '5 سيارات',
                  style: TextStyles.style14.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 150,
                  child: CustomButton(
                    backgroundColor: ColorName.downriver,
                    foregroundColor: ColorName.white,
                    borderSide: BorderSide.none,
                    onTap: () {},
                    body: const Row(
                      children: [
                        Icon(Icons.add),
                        Text('إضافة سيارة'),
                      ],
                    ),
                  ),
                )
              ],
            ),
            _buildAnalysisDetails(),
            Row(
              children: [
                const Spacer(),
                Expanded(
                  flex: 3,
                  child: CustomButton(
                    backgroundColor: ColorName.white,
                    foregroundColor: ColorName.downriver,
                    borderSide: const BorderSide(color: ColorName.downriver),
                    onTap: () {
                      Get.to(() => const DeletedCarsScreen());
                    },
                    body: const Text('السيارات المحذوفة (4)'),
                  ),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  // Builds the section for displaying the detailed analysis information
  Widget _buildAnalysisDetails() {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => Column(
          children: [
            if (index == 0) const SizedBox(height: 20),
            _buildAnalysisCard(),
            if (index == 9) const SizedBox(height: 20),
          ],
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemCount: 2,
      ),
    );
  }

  // Builds a card displaying specific analysis data
  Widget _buildAnalysisCard() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorName.downriver.withOpacity(.3),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          _buildAnalysisFooter(),
        ],
      ),
    );
  }

// Builds the footer part of the analysis card
  Widget _buildAnalysisFooter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Assets.images.carRed.image(),
            const SizedBox(width: 8),
            Expanded(
              // Makes the column expand to fill the available space
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'هافال - اتش سكس - 2023 - احمر - ',
                        style: TextStyles.style14.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'كشف',
                        style: TextStyles.style14.copyWith(
                          fontWeight: FontWeight.w500,
                          color: ColorName.hokeyPokey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Maximize space between left and right items
                    children: [
                      const Text(
                        '( عائلية صغير )',
                        style: TextStyles.style12,
                      ),
                      Row(
                        children: [
                          Assets.icons.jewel.svg(),
                          const SizedBox(width: 7),
                          Text(
                            'مضمونة',
                            style: TextStyles.style12.copyWith(
                              color: ColorName.mountainMeadow,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Maximize space between left and right items
                    children: [
                      const Text(
                        'أ أ أ - 2222',
                        style: TextStyles.style12,
                      ),
                      Text(
                        '72#',
                        style: TextStyles.style12.copyWith(
                          color: ColorName.downriver.withOpacity(.5),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Assets.icons.edit.svg(),
            const SizedBox(width: 8),
            CircleAvatar(
              backgroundColor: ColorName.red,
              child: Assets.icons.clear.svg(),
            )
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Assets.icons.clock.svg(),
                const SizedBox(width: 6),
                const Text(
                  'وقت الإضافة : 16/04/2024 - 3:50PM',
                  style: TextStyles.style14,
                ),
              ],
            ),
            const SizedBox(width: 5),
            Expanded(
              child: Text(
                '3- حجوزات مؤكدة',
                textAlign: TextAlign.center,
                style: TextStyles.style12.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
