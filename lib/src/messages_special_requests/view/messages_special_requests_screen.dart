import 'package:office_app/core/utils/constants/app_import.dart';
import 'package:office_app/src/special_request_messaging/view/special_request_messaging_screen.dart';

class MessagesSpecialRequestsScreen extends StatefulWidget {
  const MessagesSpecialRequestsScreen({super.key});

  @override
  State<MessagesSpecialRequestsScreen> createState() =>
      _MessagesSpecialRequestsScreenState();
}

class _MessagesSpecialRequestsScreenState
    extends State<MessagesSpecialRequestsScreen> {
  bool isMessaging = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'الرسائل و الطلبات الخاصة'),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        child: CustomButton(
                          backgroundColor: isMessaging
                              ? ColorName.downriver
                              : ColorName.white,
                          foregroundColor: isMessaging
                              ? ColorName.white
                              : ColorName.downriver,
                          borderSide: isMessaging
                              ? BorderSide(
                                  color: ColorName.silver.withOpacity(.38),
                                )
                              : BorderSide.none,
                          onTap: () {
                            isMessaging = true;
                            setState(() {});
                          },
                          body: const Text(
                            'الرسائل',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: SizedBox(
                        child: CustomButton(
                          backgroundColor: !isMessaging
                              ? ColorName.downriver
                              : ColorName.white,
                          foregroundColor: !isMessaging
                              ? ColorName.white
                              : ColorName.downriver,
                          borderSide: !isMessaging
                              ? BorderSide(
                                  color: ColorName.silver.withOpacity(.38),
                                )
                              : BorderSide.none,
                          onTap: () {
                            isMessaging = false;
                            setState(() {});
                          },
                          body: const Text(
                            'الطلبات الخاصة و الاشتراكات',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              isMessaging
                  ? Expanded(
                      child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Get.to(() => const MessageScreen());
                            },
                            child: Container(
                              padding: const EdgeInsets.only(
                                top: 5,
                                right: 5,
                                left: 5,
                                bottom: 10,
                              ),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: ColorName.downriver.withOpacity(.3),
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Assets.icons.userFill
                                            .svg(height: 55, width: 55),
                                        const SizedBox(width: 12),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'علي',
                                                style:
                                                    TextStyles.style14.copyWith(
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              const SizedBox(height: 5),
                                              const Text(
                                                'كيف الحال',
                                                style: TextStyles.style14,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'منذ 12 ثانية',
                                    style: TextStyles.style10.copyWith(
                                      color: ColorName.downriver,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  : Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Get.to(() => const SpecialRequestMessagingScreen());
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: ColorName.downriver.withOpacity(.5),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 15,
                                    right: 5,
                                    left: 5,
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Assets.icons.userFill.svg(
                                            height: 37,
                                            width: 37,
                                          ),
                                          const SizedBox(width: 12),
                                          Text(
                                            'علي',
                                            style: TextStyles.style14.copyWith(
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12),
                                        child: Text(
                                          'منذ 12 ثانية',
                                          style: TextStyles.style10.copyWith(
                                            color: ColorName.downriver,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8,
                                    right: 5,
                                    bottom: 10,
                                    left: 13,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Assets.images.carRed.image(),
                                      const SizedBox(width: 5),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'جدة / المطار',
                                            style: TextStyles.style14.copyWith(
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const Text(
                                            '(كامري - 2011)',
                                            style: TextStyles.style14,
                                          ),
                                          const SizedBox(height: 5),
                                          Container(
                                            padding: const EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: ColorName.hokeyPokey,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: FittedBox(
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'من',
                                                            style: TextStyles
                                                                .style12
                                                                .copyWith(
                                                              color: ColorName
                                                                  .hokeyPokey,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 5),
                                                          Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Assets.icons
                                                                  .calendarFill
                                                                  .svg(),
                                                              const SizedBox(
                                                                  width: 5),
                                                              const Column(
                                                                children: [
                                                                  Text(
                                                                    '07/05/2024',
                                                                    style: TextStyles
                                                                        .style12,
                                                                  ),
                                                                  Text(
                                                                    '9:25PM',
                                                                    style: TextStyles
                                                                        .style12,
                                                                  ),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(width: 10),
                                                      Assets.icons.arrowLong
                                                          .svg(width: 50),
                                                      const SizedBox(width: 10),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'الى',
                                                            style: TextStyles
                                                                .style12
                                                                .copyWith(
                                                              color: ColorName
                                                                  .hokeyPokey,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 5),
                                                          Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Assets.icons
                                                                  .calendarFill
                                                                  .svg(),
                                                              const SizedBox(
                                                                  width: 5),
                                                              const Column(
                                                                children: [
                                                                  Text(
                                                                    '07/05/2024',
                                                                    style: TextStyles
                                                                        .style12,
                                                                  ),
                                                                  Text(
                                                                    '9:25PM',
                                                                    style: TextStyles
                                                                        .style12,
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
                                                    style: TextStyles.style12
                                                        .copyWith(
                                                      color:
                                                          ColorName.hokeyPokey,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(height: 12);
                        },
                        itemCount: 4,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
