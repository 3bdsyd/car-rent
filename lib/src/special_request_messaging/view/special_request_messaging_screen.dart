import 'package:office_app/core/utils/constants/app_import.dart';

class SpecialRequestMessagingScreen extends StatelessWidget {
  const SpecialRequestMessagingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'الطلبات الخاصة و الاشتراكات',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Assets.icons.client.svg(
                      colorFilter: const ColorFilter.mode(
                        ColorName.downriver,
                        BlendMode.srcIn,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      'علي',
                      style: TextStyles.style14,
                    ),
                  ],
                ),
                SizedBox(
                  width: 120,
                  height: 38,
                  child: DropdownButtonHideUnderline(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorName.alto,
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
                        items: [
                          DropdownMenuItem(
                            child: Text(
                              'سياراتي',
                              style: TextStyles.style14.copyWith(
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w500,
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
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        top: 10, left: 5, right: 5, bottom: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorName.downriver.withOpacity(.05),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'احتاج سيارة حسب الوقت و المواصفات التي في الاسفل',
                          style:  TextStyle(
                            color: ColorName.hokeyPokey,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Assets.images.carRed.image(),
                            const SizedBox(width: 8),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'جدة - المطار',
                                  style: TextStyle(
                                    color: ColorName.downriver,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '(عائلية - 2010)',
                                  style: TextStyle(
                                    color: ColorName.downriver,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'من',
                                        style: TextStyles.style14.copyWith(
                                          color: ColorName.hokeyPokey,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'الى',
                                        style: TextStyles.style14.copyWith(
                                          color: ColorName.hokeyPokey,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            '1 شهر و 1 اسبوع و 5 ايام و 2ساعة',
                            style: TextStyle(
                              color: ColorName.downriver,
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const Divider(),
                        const Row(
                          children: [
                            Text(
                              '[ استخدام خارج الممكلة ] ',
                              style: TextStyle(
                                color: ColorName.downriver,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'البحرين',
                              style: TextStyle(
                                color: ColorName.downriver,
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Row(
                          children: [
                            Text(
                              '[ الكيلومترات ] ',
                              style: TextStyle(
                                color: ColorName.downriver,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'غير محددة',
                              style: TextStyle(
                                color: ColorName.downriver,
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Row(
                          children: [
                            Text(
                              '[ توصيل المنزل ] ',
                              style: TextStyle(
                                color: ColorName.downriver,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'استلام من الفرع',
                              style: TextStyle(
                                color: ColorName.downriver,
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Row(
                          children: [
                            Text(
                              '[ استخدام خارج الممكلة ] ',
                              style: TextStyle(
                                color: ColorName.downriver,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'البحرين',
                              style: TextStyle(
                                color: ColorName.downriver,
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Row(
                          children: [
                            Text(
                              '[ مقاعد اطفال ] ',
                              style: TextStyle(
                                color: ColorName.downriver,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'نعم',
                              style: TextStyle(
                                color: ColorName.downriver,
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Row(
                          children: [
                            Text(
                              '[ نوع التأمين ] ',
                              style: TextStyle(
                                color: ColorName.downriver,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'شامل',
                              style: TextStyle(
                                color: ColorName.downriver,
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Row(
                          children: [
                            Text(
                              '[ الملاحظات الاخرى ] ',
                              style: TextStyle(
                                color: ColorName.downriver,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'تكون نظيفة',
                              style: TextStyle(
                                color: ColorName.downriver,
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Row(
                          children: [
                            Text(
                              '[ فضلاً عدم مراسلتي بعد تاريخ ] ',
                              style: TextStyle(
                                color: ColorName.downriver,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '24/4/2024',
                              style: TextStyle(
                                color: ColorName.downriver,
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const Text(
                              '[  التواصل من خلال         whatsapp  ] ',
                              style: TextStyle(
                                color: ColorName.downriver,
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 40,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: ColorName.downriver,
                              ),
                              child: const Text(
                                '+9633-123456789',
                                style: TextStyle(
                                  color: ColorName.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // Assets.icons.c.svg(),
                            const Text(
                              '3:50 PM',
                              style: TextStyle(
                                fontSize: 10,
                                color: ColorName.downriver,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            top: 10, left: 5, right: 5, bottom: 2),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          color: ColorName.downriver.withOpacity(.05),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'اهلا',
                              style: TextStyle(
                                color: ColorName.downriver,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  // Assets.icons.twoCorrectMarks.svg(),
                                  const SizedBox(width: 5),
                                  const Text('3:50 PM'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Container(
          height: 60,
          padding: const EdgeInsets.only(top: 5),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: ColorName.mercury,
              ),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Assets.icons.subtract.svg(),
                    ),
                    filled: true,
                    fillColor: ColorName.athensGray,
                    hintText: 'اكتب رسالتك هنا',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 12,
                      color: ColorName.downriver.withOpacity(.5),
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 15),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Assets.icons.gallery.svg(),
            ],
          ),
        ),
      ),
    );
  }
}
