import 'package:office_app/core/utils/constants/app_import.dart';
import 'package:office_app/shared/custom_button.dart';
import 'package:office_app/src/details_rental/view/details_rental_screen.dart';
import 'package:office_app/src/requests_rejected/view/requests_rejected_screen.dart';

class RentalRequestScreen extends StatelessWidget {
  const RentalRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'طلبات الاستئجار'),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            color: ColorName.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Assets.icons.emptyImage.svg(),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'المركبة الرابعة',
                      style: TextStyles.style14.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Assets.icons.locationMark.svg(),
                        const SizedBox(width: 5),
                        const Text(
                          'تبوك / الامير سلطان',
                          style: TextStyles.style12,
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Assets.icons.user.svg(),
                        const SizedBox(width: 5),
                        const Text(
                          'علي',
                          style: TextStyles.style12,
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Assets.icons.phoneGreen.svg(),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const RentalRequestCard(
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
          const SizedBox(height: 10),
          const RentalRequestCard(
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
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomButton(
              backgroundColor: ColorName.white,
              foregroundColor: ColorName.downriver,
              borderSide: const BorderSide(
                color: ColorName.downriver,
              ),
              onTap: () => Get.to(
                () => const RequestsRejectedScreen(),
              ),
              body: const Text('الطلبات المرفوضة من قبل المكتب'),
            ),
          ),
          const SizedBox(height: 20),
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
    return GestureDetector(
      onTap: () {
        Get.to(() => const DetailsRentalScreen());
      },
      child: Container(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'العميل الغى الطلب',
                  style: TextStyles.style12.copyWith(
                    color: ColorName.electricViolet,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 8,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: ColorName.electricViolet,
                  ),
                  child: Text(
                    'بسبب',
                    style: TextStyles.style12.copyWith(
                      color: ColorName.white,
                    ),
                  ),
                ),
                Text(
                  'حصوله على سيارة أفضل',
                  style: TextStyles.style12.copyWith(
                    color: ColorName.electricViolet,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            _buildCarDetails(),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorName.hokeyPokey,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'من',
                            style: TextStyles.style14.copyWith(
                              color: ColorName.hokeyPokey,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Assets.icons.calendarFill.svg(),
                              const SizedBox(width: 5),
                              const Column(
                                children: [
                                  Text(
                                    '07/05/2024',
                                    style: TextStyles.style14,
                                  ),
                                  Text(
                                    '9:25PM',
                                    style: TextStyles.style14,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Assets.icons.arrowLong.svg(),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'الى',
                            style: TextStyles.style14.copyWith(
                              color: ColorName.hokeyPokey,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Assets.icons.calendarFill.svg(),
                              const SizedBox(width: 5),
                              const Column(
                                children: [
                                  Text(
                                    '07/05/2024',
                                    style: TextStyles.style14,
                                  ),
                                  Text(
                                    '9:25PM',
                                    style: TextStyles.style14,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    ' 2 شهر و  1 يوم و 3 ساعة',
                    style: TextStyles.style14.copyWith(
                      color: ColorName.hokeyPokey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            _buildTimeAndPriceSection(),
            const SizedBox(height: 8),
            _buildActionButton(),
          ],
        ),
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
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  category,
                  style: TextStyles.style12,
                ),
                Assets.icons.jewel.svg(),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTimeAndPriceSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Assets.icons.subscriptionPrice.svg(width: 15),
                const SizedBox(width: 5),
                Text(
                  'المبلغ $price',
                  style: TextStyles.style14,
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Assets.icons.hash.svg(width: 15),
                const SizedBox(width: 5),
                Text(
                  'رقم الطلب: $requestId',
                  style: TextStyles.style14,
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Assets.icons.clock.svg(width: 15),
                const SizedBox(width: 5),
                const Text(
                  'وقت الطلب: 16/04/2024 - 3:50PM',
                  style: TextStyles.style14,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildActionButton() {
    return SizedBox(
      height: 38,
      child: Row(
        children: [
          const Spacer(),
          Expanded(
            child: CustomButton(
              backgroundColor: ColorName.electricViolet,
              foregroundColor: ColorName.white,
              borderSide: BorderSide.none,
              onTap: () {},
              body: const Text('علمت ذلك'),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
