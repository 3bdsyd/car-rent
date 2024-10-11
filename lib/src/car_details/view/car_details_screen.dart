import 'package:office_app/core/utils/constants/app_import.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: ColorName.white,
        actions: [
          GestureDetector(
            onTap: () {
              Get.bottomSheet(
                BottomSheet(
                  enableDrag: false,
                  backgroundColor: ColorName.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                  ),
                  showDragHandle: true,
                  dragHandleColor: ColorName.downriver.withOpacity(.25),
                  dragHandleSize: const Size(67, 4),
                  onClosing: () {},
                  builder: (context) {
                    return Container(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 16,
                      ),
                      width: double.infinity,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'أوقات العمل',
                              style: TextStyle(
                                fontSize: 14,
                                color: ColorName.downriver,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 10),
                            towShifts(),
                            const SizedBox(height: 10),
                            towShifts(),
                            const SizedBox(height: 10),
                            towShifts(),
                            const SizedBox(height: 10),
                            towShifts(),
                            const SizedBox(height: 10),
                            towShifts(),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
            child: Container(
              width: 130,
              height: 35,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorName.downriver.withOpacity(.3),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'اوقات الدوام',
                    style: TextStyle(
                      color: ColorName.downriver,
                      fontSize: 14,
                    ),
                  ),
                  Assets.icons.arrowDropdown.svg(),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
        ],
        title: Row(
          children: [
            Assets.images.comanyLogo.image(width: 40),
            const SizedBox(width: 5),
            Column(
              children: [
                const Text(
                  'م.علي سعد',
                  style: TextStyle(
                    color: ColorName.downriver,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Assets.icons.locationMark.svg(),
                    const SizedBox(width: 5),
                    const Text(
                      'تبوك /منى',
                      style: TextStyle(
                        color: ColorName.downriver,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Assets.icons.arrowBack.svg(fit: BoxFit.scaleDown),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              const SizedBox(height: 10),
              _buildDatePicker(),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Text(
                    'تم تحديد ',
                    style: TextStyle(
                      color: ColorName.downriver,
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '3 شهر و 3 أسبوع و 3 يوم و 3 ساعة',
                    style: TextStyle(
                      color: ColorName.hokeyPokey,
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: [
                  Assets.images.detailsCar.image(),
                  Positioned(
                    left: 10,
                    bottom: 20,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: ColorName.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Assets.icons.jewel.svg(),
                          const SizedBox(width: 5),
                          const Text(
                            'مضمونة',
                            style: TextStyle(
                              color: ColorName.mountainMeadow,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'اليومي',
                        style: TextStyle(
                          color: ColorName.downriver,
                        ),
                      ),
                      Text(
                        '30 ريال',
                        style: TextStyle(
                          color: ColorName.downriver,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Text(
                        'الاسبوعي',
                        style: TextStyle(
                          color: ColorName.downriver,
                        ),
                      ),
                      Text(
                        '240 ريال',
                        style: TextStyle(
                          color: ColorName.downriver,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Text(
                        'الشهري',
                        style: TextStyle(
                          color: ColorName.downriver,
                        ),
                      ),
                      Text(
                        '3000 رايل',
                        style: TextStyle(
                          color: ColorName.downriver,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Assets.icons.street.svg(),
                      const SizedBox(width: 10),
                      const Text(
                        '5 كم مجاني (1.5 ريال للكيلو الزيادة) ',
                        style: TextStyle(
                          color: ColorName.hokeyPokey,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Assets.icons.share.svg(),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: Assets.icons.lexus.svg(),
              ),
              const SizedBox(height: 8),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'لكزس - ال اس -  2021 - ابيض - ',
                        style: TextStyle(
                            color: ColorName.downriver,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'كشف',
                        style: TextStyle(
                            color: ColorName.hokeyPokey,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    '( عائلية صغير ) #72',
                    style: TextStyle(
                        color: ColorName.downriver,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: List.generate(
                  6,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Assets.icons.star.svg(),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                '● مضمونة : في حال حضورك ولم تجد هذه السيارة سوف يتم تعويضك بسيارة مشابهة او اعلى فئة دون زيادة مالية',
                style: TextStyle(
                  color: ColorName.mountainMeadow,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      height: 89,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: ColorName.downriver,
                        ),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ناقل الحركة :',
                            style: TextStyle(
                              color: ColorName.downriver,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'اوتوماتيك',
                            style: TextStyle(
                              color: ColorName.downriver,
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      height: 89,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: ColorName.downriver,
                        ),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'الوقود :',
                            style: TextStyle(
                              color: ColorName.downriver,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'استلام و تسليم كما هي',
                            style: TextStyle(
                              color: ColorName.downriver,
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      height: 89,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: ColorName.downriver,
                        ),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'توصيل السياره للمنزل :',
                            style: TextStyle(
                              color: ColorName.downriver,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'يوجد مقابل 55 ريال',
                            style: TextStyle(
                              color: ColorName.downriver,
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      height: 89,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: ColorName.downriver,
                        ),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'مقعد اطفال :',
                            style: TextStyle(
                              color: ColorName.downriver,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'لا يوجد',
                            style: TextStyle(
                              color: ColorName.downriver,
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: ColorName.mountainMeadow.withOpacity(.25),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: ColorName.mountainMeadow,
                  ),
                ),
                child: const Text(
                  'تستطيع ان تحصل على ميزات الكيلومترات غير محددة مقابل 20 ريال لليوم',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorName.hokeyPokey,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Align(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '● يسمح باستخدامها داخل المملكة',
                      style: TextStyle(
                        color: ColorName.downriver,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '                    (البحرين - قطر)',
                      style: TextStyle(
                        color: ColorName.downriver,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '● ( يوجد تكلفة تفويض حسب كل دولة )',
                      style: TextStyle(
                        color: ColorName.hokeyPokey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 24),
                    Text(
                      '● التأمين',
                      style: TextStyle(
                        color: ColorName.downriver,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '*بدون تأمين ( 0 ريال ) (نسبة التحمل من الحادث 10%)',
                      style: TextStyle(
                        color: ColorName.downriver,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '*ضد الغير ( 75 ريال لليوم ) ( نسبة التحمل من الحادث 300 ريال )',
                      style: TextStyle(
                        color: ColorName.downriver,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '*شامل  ( 170 ريال لليوم ) ( نسبة التحمل من الحادث 20% )',
                      style: TextStyle(
                        color: ColorName.downriver,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 24),
                    Text(
                      '● في حال التأخر عن اعادة السيارة في وقتها',
                      style: TextStyle(
                        color: ColorName.downriver,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      '                     (( تحسب 20 ريال لساعه ))',
                      style: TextStyle(
                        color: ColorName.downriver,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: ColorName.downriver,
                  ),
                ),
                child: const Column(
                  children: [
                    Text(
                      'ملاحظات :',
                      style: TextStyle(
                        color: ColorName.downriver,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'سياره كويسه',
                      style: TextStyle(
                        color: ColorName.downriver,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: ColorName.downriver,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Assets.icons.file.svg(),
                    const SizedBox(width: 5),
                    const Text(
                      'مشاهدة العقد',
                      style: TextStyle(
                        color: ColorName.downriver,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'موقع السيارة : (تبعد عنك 15كم)',
                  style: TextStyle(
                    color: ColorName.downriver,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Assets.images.site.image(),
              const SizedBox(height: 16),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'صورة المكتب من الخارج',
                  style: TextStyle(
                    color: ColorName.downriver,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Assets.images.outsideOffice.image(),
              const SizedBox(height: 32),
              CustomButton(
                backgroundColor: ColorName.downriver,
                foregroundColor: ColorName.white,
                borderSide: BorderSide.none,
                onTap: () {
                  // Get.to(const BookingScreen());
                },
                body: const Text('حجز الان'),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }

  Widget towShifts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'السبت',
          style: TextStyle(
            fontSize: 14,
            color: ColorName.downriver,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'فترة صباحية',
                  style: TextStyle(
                    fontSize: 14,
                    color: ColorName.hokeyPokey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Assets.icons.clock.svg(),
                    const SizedBox(width: 5),
                    const Text(
                      '11:00 PM - 7:00AM',
                      style: TextStyle(
                        fontSize: 14,
                        color: ColorName.downriver,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                )
              ],
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'فترة مسائية',
                  style: TextStyle(
                    fontSize: 14,
                    color: ColorName.hokeyPokey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '11:00 PM - 7:00AM',
                  style: TextStyle(
                    fontSize: 14,
                    color: ColorName.downriver,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDatePicker() {
    return SizedBox(
      height: 42,
      child: Row(
        children: [
          Expanded(
            child: DropdownButtonHideUnderline(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorName.hokeyPokey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: DropdownButton<String>(
                  dropdownColor: ColorName.white,
                  isExpanded: true, // لجعل الـ Dropdown يأخذ العرض الكامل
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Assets.icons.arrowDropdown.svg(),
                  ),
                  items: const [
                    DropdownMenuItem(
                      child: Text(
                        '12/10/2024 4:00PM',
                        style: TextStyle(
                          color: ColorName.downriver,
                          overflow:
                              TextOverflow.ellipsis, // لحل مشكلة النص الطويل
                        ),
                      ),
                    ),
                  ],
                  onChanged: (Object? value) {},
                ),
              ),
            ),
          ),
          const SizedBox(width: 8), 
          Expanded(
            child: DropdownButtonHideUnderline(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorName.hokeyPokey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: DropdownButton<String>(
                  dropdownColor: ColorName.white,
                  isExpanded: true,
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Assets.icons.arrowDropdown.svg(),
                  ),
                  items: const [
                    DropdownMenuItem(
                      child: Text(
                        '24/11/2024 6:00PM',
                        style: TextStyle(
                          color: ColorName.downriver,
                          overflow:
                              TextOverflow.ellipsis, // لحل مشكلة النص الطويل
                        ),
                      ),
                    ),
                  ],
                  onChanged: (Object? value) {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
