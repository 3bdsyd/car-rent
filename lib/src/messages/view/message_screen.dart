import 'package:office_app/core/utils/constants/app_import.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'الرسائل',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
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
            const SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: ColorName.wildSand,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '25/5/2024',
                        style: TextStyles.style10.copyWith(
                          color: ColorName.downriver,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    width: Get.width / 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const CarDetailsScreen());
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 5,
                              right: 5,
                              bottom: 2,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorName.downriver.withOpacity(.05),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Assets.images.carRed.image(),
                                    const SizedBox(width: 8),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'هافال - اتش سكس - 2023 - احمر - كشف',
                                          style: TextStyle(
                                            color: ColorName.downriver,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                        ),
                                        Text(
                                          '(عائلية)',
                                          style: TextStyle(
                                            color: ColorName.downriver,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'أ أ أ - 2222',
                                              style: TextStyles.style12,
                                            ),
                                            SizedBox(width: 8),
                                            Text(
                                              '72#',
                                              style:
                                                  TextStyles.style12.copyWith(
                                                color: ColorName.downriver
                                                    .withOpacity(.5),
                                              ),
                                            ),
                                            SizedBox(width: 8),
                                            Text(
                                              '(هذا رقم اللوحة لا يراها العميل )',
                                              style:
                                                  TextStyles.style12.copyWith(
                                                color: ColorName.downriver
                                                    .withOpacity(.75),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '3:50 PM',
                                      style: TextStyles.style10.copyWith(
                                        color: ColorName.downriver,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ColorName.wildSand,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'اليوم',
                              style: TextStyles.style10.copyWith(
                                color: ColorName.downriver,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
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
                                  const SizedBox(width: 5),
                                  Text(
                                    '3:50 PM',
                                    style: TextStyles.style10.copyWith(
                                      color: ColorName.downriver,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
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
            ),
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
