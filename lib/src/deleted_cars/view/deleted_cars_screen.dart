import 'package:office_app/core/utils/constants/app_import.dart';

class DeletedCarsScreen extends StatelessWidget {
  const DeletedCarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'السيارات المحذوفة'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            _buildAnalysisDetails(),
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
            _buildAnalysisCard(),
            if (index == 9) const SizedBox(height: 20),
          ],
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemCount: 10,
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
        const Text(
          '3- حجوزات مؤكدة',
          style: TextStyles.style14,
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Assets.icons.calendarFill.svg(),
            const SizedBox(width: 6),
            const Text(
              'وقت الإضافة : 16/04/2024 - 3:50PM',
              style: TextStyles.style14,
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Assets.icons.calendarFill.svg(
              colorFilter:
                  const ColorFilter.mode(ColorName.red, BlendMode.srcIn),
            ),
            const SizedBox(width: 6),
            const Text(
              'وقت الإضافة : 16/04/2024 - 3:50PM',
              style: TextStyles.style14,
            ),
          ],
        ),
      ],
    );
  }
}
