import 'package:office_app/core/utils/constants/app_import.dart';

class DeletCarScreen extends StatelessWidget {
  const DeletCarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'حذف سيارة'),
      body: ListView(
        children: [
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
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    backgroundColor: ColorName.downriver,
                    foregroundColor: ColorName.white,
                    borderSide: BorderSide.none,
                    onTap: () {},
                    body: const Text(' اعتمد الحذف'),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: CustomButton(
                    backgroundColor: ColorName.white,
                    foregroundColor: ColorName.downriver,
                    borderSide: const BorderSide(color: ColorName.downriver),
                    onTap: () {},
                    body: const Text('الغاء'),
                  ),
                ),
              ],
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
          const Divider(
            color: ColorName.black,
          ),
          Text(
            'حجوزات الشخاص الذين وافقت لهم بتأجير في المستقبل',
            style: TextStyles.style13.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'تمت الموافقة من قبلكم على هذه السيارة في حال حضور العميل و لم يجدها سوف يتم تعويضه بسيارة مشابهة او اعلى فئة بدون زيادة مالية',
            style: TextStyles.style12.copyWith(
              color: ColorName.mountainMeadow,
            ),
          ),
          const SizedBox(height: 8),
          _buildActionButton(),
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
        ],
      ),
    );
  }

  Widget _buildCarDetails() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Assets.images.carRed.image(),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'كامري - 2023 - احمر',
                  style: TextStyles.style14.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                const Text('(عائلية صغير)', style: TextStyles.style12),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Text(
                      'أ أ أ - 2222',
                      style: TextStyles.style12,
                    ),
                    const SizedBox(width: 8),
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
          ],
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
