import 'package:office_app/core/utils/constants/app_import.dart';

class WaitingCarReturnScreen extends StatelessWidget {
  const WaitingCarReturnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'انتظار عودة السيارة'),
      body: ListView(
        children: const [
          SizedBox(height: 20),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'هل العميل لم يقم بإرجاع السيارة ؟',
                style: TextStyles.style14.copyWith(
                  color: ColorName.scienceBlue,
                  decoration: TextDecoration.underline,
                  decorationColor: ColorName.scienceBlue,
                ),
              ),
              Container(
                height: 20,
                width: 20,
                decoration: const BoxDecoration(
                  color: ColorName.scienceBlue,
                  shape: BoxShape.circle,
                ),
              )
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
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorName.downriver,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'تم إعادة السيارة',
                  style: TextStyles.style14,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorName.hokeyPokey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Assets.icons.whatsapp.svg(),
                    const SizedBox(width: 5),
                    Text(
                      'مراسلة الدعم الفني',
                      style: TextStyles.style14.copyWith(
                        color: ColorName.hokeyPokey,
                      ),
                    ),
                  ],
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
            const SizedBox(height: 5),
            Row(
              children: [
                Assets.icons.clock.svg(width: 15),
                const SizedBox(width: 5),
                const Text(
                  'وقت الحضور: 16/04/2024 - 3:50PM',
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
                  'وقت الحضور الفعلي: 16/04/2024 - 3:50PM',
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
                  'وقت العودة: 16/04/2024 - 3:50PM',
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
          Assets.icons.userFill.svg(),
          const SizedBox(width: 5),
          const Text(
            'علي',
            style: TextStyles.style12,
          ),
          const Spacer(),
          Assets.icons.phoneGreen.svg(),
          const SizedBox(width: 8),
          Assets.icons.subtract1.svg(),
        ],
      ),
    );
  }
}
