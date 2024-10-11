import 'package:office_app/core/utils/constants/app_import.dart';

class WorkingTimeScreen extends StatelessWidget {
  const WorkingTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'أوقات العمل'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorName.downriver.withOpacity(.75),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'السبت',
                        style: TextStyles.style14.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: ColorName.downriver,
                                  ),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              const SizedBox(width: 4),
                              const Text(
                                'دوام 24 ساعة',
                                style: TextStyles.style12,
                              ),
                            ],
                          ),
                          const SizedBox(width: 8),
                          Row(
                            children: [
                              Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: ColorName.downriver,
                                  ),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              const SizedBox(width: 4),
                              const Text(
                                'دوام 24 ساعة',
                                style: TextStyles.style12,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: ColorName.downriver,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            'فترة واحدة',
                            style: TextStyles.style12,
                          ),
                          const SizedBox(width: 12),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            alignment: Alignment.centerLeft,
                            width: 80,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: ColorName.downriver,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Assets.icons.arrowDropdown.svg(),
                          ),
                          const SizedBox(width: 12),
                          Transform.rotate(
                            angle: 3.14,
                            child: const Icon(Icons.arrow_back),
                          ),
                          const SizedBox(width: 12),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            alignment: Alignment.centerLeft,
                            width: 80,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: ColorName.downriver,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Assets.icons.arrowDropdown.svg(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: ColorName.downriver,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            'فترتين',
                            style: TextStyles.style12,
                          ),
                          const SizedBox(width: 12),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 18,
                            ),
                            alignment: Alignment.centerLeft,
                            width: 60,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: ColorName.downriver,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 18,
                            ),
                            alignment: Alignment.centerLeft,
                            width: 60,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: ColorName.downriver,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Transform.rotate(
                            angle: 3.14,
                            child: const Icon(Icons.arrow_back),
                          ),
                          SizedBox(width: 12),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 18,
                            ),
                            alignment: Alignment.centerLeft,
                            width: 60,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: ColorName.downriver,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 18,
                            ),
                            alignment: Alignment.centerLeft,
                            width: 60,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: ColorName.downriver,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
