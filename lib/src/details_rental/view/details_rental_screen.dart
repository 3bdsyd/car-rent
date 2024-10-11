import 'package:office_app/core/utils/constants/app_import.dart';

class DetailsRentalScreen extends StatelessWidget {
  const DetailsRentalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'تفاصيل طلب الاستئجار #49'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
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
              const SizedBox(height: 16),
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
              const SizedBox(height: 16),
              Text(
                'هل وقت الاستلام و التسليم يتناسب مع وقت دوام المكتب ؟',
                style: TextStyles.style14.copyWith(
                  color: ColorName.red,
                ),
              ),
              const SizedBox(height: 16),
              Column(
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
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'العميل',
                  style: TextStyles.style14.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: Row(
                  children: [
                    Assets.icons.userFill.svg(width: 55, height: 55),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'علي',
                                  style: TextStyles.style12,
                                ),
                                Row(
                                  children: [
                                    const SizedBox(width: 8),
                                    Assets.icons.phoneGreen.svg(),
                                    const SizedBox(width: 8),
                                    Assets.icons.subtract1.svg(),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Row(
                                children: List.generate(
                                  5,
                                  (index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2),
                                    child: Assets.icons.star.svg(),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'مشاهدة تقييم العميل',
                                style: TextStyles.style12.copyWith(
                                  color: ColorName.hokeyPokey,
                                  decoration: TextDecoration.underline,
                                  decorationColor: ColorName.hokeyPokey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'الفاتورة :',
                  style: TextStyles.style14.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: 10),
                  SizedBox(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'من :',
                                style: TextStyles.style14,
                              ),
                              const SizedBox(height: 4),
                              DropdownButtonHideUnderline(
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: ColorName.hokeyPokey,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
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
                                          '12/10/2024 4:00PM',
                                          style: TextStyle(
                                            color: ColorName.downriver,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                    ],
                                    onChanged: (Object? value) {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'الى :',
                                style: TextStyles.style14,
                              ),
                              const SizedBox(height: 4),
                              DropdownButtonHideUnderline(
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: ColorName.hokeyPokey,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
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
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                    ],
                                    onChanged: (Object? value) {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    '1 شهر و 1 اسبوع و 5 ايام و 2ساعة',
                    style: TextStyle(
                      color: ColorName.downriver,
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      children: [
                        Text(
                          '#',
                          style: TextStyle(
                            color: ColorName.downriver,
                            fontWeight: FontWeight.w300,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'رقم الطلب #16',
                          style: TextStyle(
                            color: ColorName.downriver,
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorName.downriver.withOpacity(.06),
                      border: Border.all(color: ColorName.blackPearl),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Spacer(flex: 2),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    right: BorderSide(
                                      color: ColorName.silver,
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'التكلفة',
                                  style: TextStyle(
                                    color: ColorName.hokeyPokey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    right: BorderSide(
                                      color: ColorName.silver,
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'المطلوب',
                                  style: TextStyle(
                                    color: ColorName.hokeyPokey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    right: BorderSide(
                                      color: ColorName.silver,
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'الاجمالي',
                                  style: TextStyle(
                                    color: ColorName.hokeyPokey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          height: 0,
                        ),
                        Container(
                          color: Colors.white,
                          child: Row(
                            children: [
                              const Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'شهر',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    '450 ريال للشهر',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const FittedBox(
                                    child: Text(
                                      '1 شهر',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: ColorName.downriver,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const FittedBox(
                                    child: Text(
                                      '450 ريال',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: ColorName.downriver,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Row(
                            children: [
                              const Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'اسبوع',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    '280 ريال للاسبوع',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const FittedBox(
                                    child: Text(
                                      '1 اسبوع',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: ColorName.downriver,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const FittedBox(
                                    child: Text(
                                      '280 ريال',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: ColorName.downriver,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Row(
                            children: [
                              const Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'يوم',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    '280 ريال لليوم',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    '',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    '',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'ساعة',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    '280 ريال للساعة',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const FittedBox(
                                    child: Text(
                                      '2 ساعة',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: ColorName.downriver,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const FittedBox(
                                    child: Text(
                                      '20 ريال',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: ColorName.downriver,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorName.downriver.withOpacity(.25),
                      border: const Border(
                        left: BorderSide(color: ColorName.blackPearl),
                        right: BorderSide(color: ColorName.blackPearl),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Divider(
                          height: 0,
                          color: ColorName.downriver,
                        ),
                        Container(
                          color: Colors.white,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Assets.icons.trueMark.svg(),
                                        const SizedBox(width: 5),
                                        const Expanded(
                                          child: Text(
                                            ' بدون تأمين',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300,
                                              color: ColorName.downriver,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    '450 ريال للشهر',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const FittedBox(
                                    child: Text(
                                      '1 شهر',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: ColorName.downriver,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const FittedBox(
                                    child: Text(
                                      '450 ريال',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: ColorName.downriver,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 0,
                        ),
                        Container(
                          color: Colors.white,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Assets.icons.trueMark.svg(),
                                        const SizedBox(width: 5),
                                        const Expanded(
                                          child: Text(
                                            'تأمين ضد التغيير',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300,
                                              color: ColorName.downriver,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    '20 ريال لليوم',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const FittedBox(
                                    child: Text(
                                      '43 لليوم',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: ColorName.downriver,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const FittedBox(
                                    child: Text(
                                      '74 ريال',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: ColorName.downriver,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 0,
                        ),
                        Container(
                          color: Colors.white,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Assets.icons.trueMark.svg(),
                                        const SizedBox(width: 5),
                                        const Expanded(
                                          child: Text(
                                            'تأمين شامل',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300,
                                              color: ColorName.downriver,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    '40 ريال لليوم',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    '43 لليوم',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    '',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorName.downriver.withOpacity(.25),
                      border: const Border(
                        top: BorderSide(color: ColorName.blackPearl),
                        left: BorderSide(color: ColorName.blackPearl),
                        right: BorderSide(color: ColorName.blackPearl),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Divider(
                          height: 0,
                          color: ColorName.downriver,
                        ),
                        Container(
                          color: Colors.white,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Assets.icons.trueMark.svg(),
                                        const SizedBox(width: 5),
                                        const Expanded(
                                          child: Text(
                                            'تفويض خارجي',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300,
                                              color: ColorName.downriver,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    '450 ريال للشهر',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    '1 شهر',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    '450 ريال',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 0,
                        ),
                        Container(
                          color: Colors.white,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Assets.icons.trueMark.svg(),
                                        const SizedBox(width: 5),
                                        const Expanded(
                                          child: Text(
                                            'مقعد طفل',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300,
                                              color: ColorName.downriver,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    'مجاني',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  height: 34,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    color: ColorName.silver,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 0,
                        ),
                        Container(
                          color: Colors.white,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Assets.icons.trueMark.svg(),
                                        const SizedBox(width: 5),
                                        const Expanded(
                                          child: Text(
                                            'كيلوات مفتوحة',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300,
                                              color: ColorName.downriver,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    '85 ريال لليوم',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    '43 لليوم',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    '',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 0,
                        ),
                        Container(
                          color: ColorName.silver,
                          child: Row(
                            children: [
                              const SizedBox(width: 30),
                              const Expanded(
                                child: Text(
                                  'توصيل للمنزل',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                    color: ColorName.downriver,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 30),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    'غير متوفر',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(flex: 2),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Row(
                            children: [
                              const Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    child: Text(
                                      'ضريبة القيمة المضافة 15%',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        color: ColorName.downriver,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    '',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    '',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        color: ColorName.silver,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    '45 ريال',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      color: ColorName.downriver,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: ColorName.hokeyPokey,
                      border: Border.all(color: ColorName.blackPearl),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(),
                        Expanded(
                          child: Text(
                            'الإجمالي',
                            style: TextStyle(
                              color: ColorName.downriver,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text(
                          '450 ريال',
                          style: TextStyle(
                            color: ColorName.downriver,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'هذا السعر ثابت دون زيادة او نقصان مالم تزيد في الايام او الساعات او الكيلومترات او طلب تفويض خارجي',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10,
                      color: ColorName.black,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'الدفع',
                      style: TextStyles.style14.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorName.downriver),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            'نقداً عند الاستلام',
                            style: TextStyle(
                              color: ColorName.downriver,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 26),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Assets.icons.jewel.svg(),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'تمت الموافقة من قبلكم على هذه السيارة في حال حضور العميل و لم يجدها سوف يتم تعويضه بسيارة مشابهة او اعلى فئة بدون زيادة مالية',
                          style: TextStyles.style13.copyWith(
                            color: ColorName.mountainMeadow,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                            backgroundColor: ColorName.downriver,
                            foregroundColor: ColorName.white,
                            borderSide: BorderSide.none,
                            onTap: () {},
                            body: const Text('موافق'),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: CustomButton(
                            backgroundColor: ColorName.white,
                            foregroundColor: ColorName.red,
                            borderSide: const BorderSide(
                              color: ColorName.red,
                            ),
                            onTap: () {},
                            body: const Text('رفض'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
