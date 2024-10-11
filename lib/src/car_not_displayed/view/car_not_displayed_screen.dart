import 'package:office_app/core/utils/constants/app_import.dart';
import 'package:office_app/shared/custom_button.dart';

class CarNotDisplayedScreen extends StatelessWidget {
  const CarNotDisplayedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'عدم عرض السيارة'),
      body: ListView(
        children: const [
          RentalRequestCard(
            carType: 'هافال - اتش سكس - 2023 - احمر - كشف',
            category: '(عائلية صغيرة)',
            plateNumber: 'أ أ أ - 2222',
            requestDate: '16/04/2024 - 3:50PM',
            price: '130 ريال',
            duration: '2 شهر و 1 يوم و 3 ساعة',
            status: 'مضمونة',
            requestId: '#2',
            imageUrl:
                'assets/car_image.png', // Use an asset image or network image
          ),
          SizedBox(height: 10),
          RentalRequestCard(
            carType: 'هافال - اتش سكس - 2023 - احمر - كشف',
            category: '(عائلية صغيرة)',
            plateNumber: 'أ أ أ - 2222',
            requestDate: '16/04/2024 - 3:50PM',
            price: '23 ريال',
            duration: '2 شهر و 1 يوم و 3 ساعة',
            status: 'ملغاة',
            requestId: '#2',
            imageUrl: 'assets/car_image.png',
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class RentalRequestCard extends StatelessWidget {
  final String carType;
  final String category;
  final String plateNumber;
  final String requestDate;
  final String price;
  final String duration;
  final String status;
  final String requestId;
  final String imageUrl;

  const RentalRequestCard({
    required this.carType,
    required this.category,
    required this.plateNumber,
    required this.requestDate,
    required this.price,
    required this.duration,
    required this.status,
    required this.requestId,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: ColorName.downriver.withOpacity(.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCarDetails(),
          const SizedBox(height: 8),
          _buildActionButton(),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'السيارة معروضة للعملاء',
                style: TextStyles.style14.copyWith(
                  color: ColorName.scienceBlue,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '2 - حجز مؤكدة',
                style: TextStyles.style14.copyWith(
                  color: ColorName.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCarDetails() {
    return Row(
      children: [
        Assets.images.carRed.image(),
        const SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              carType,
              style: TextStyles.style14.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  category,
                  style: TextStyles.style12,
                ),
                const SizedBox(height: 2),
                const Row(
                  children: [
                    Text(
                      ' أ أ أ -2222',
                      style: TextStyles.style12,
                    ),
                    SizedBox(width: 8),
                    Text(
                      '72#',
                      style: TextStyles.style12,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildActionButton() {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: 140,
        height: 40,
        child: CustomButton(
          backgroundColor: ColorName.white,
          foregroundColor: ColorName.downriver,
          borderSide: const BorderSide(color: ColorName.downriver),
          onTap: () {},
          body: const Text(
            'عدم عرض السيارة',
            style: TextStyles.style12,
          ),
        ),
      ),
    );
  }
}
