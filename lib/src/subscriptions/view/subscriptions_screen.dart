import 'package:office_app/core/utils/constants/app_import.dart';

class SubscriptionsScreen extends StatelessWidget {
  const SubscriptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'الأشتراكات',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildSubscriptionItem(
                title: 'الاشتراك 3',
                price: '100 ريال',
                dateRange: 'من 12/2/2024 - 11/2/2024',
                status: 'فعال',
                statusColor: ColorName.mountainMeadow,
                borderColor: ColorName.mountainMeadow,
                backgroundColor: ColorName.mountainMeadow.withOpacity(.04),
              ),
              const SizedBox(height: 24),
              _buildSubscriptionItem(
                title: 'الاشتراك 2',
                price: '100 ريال',
                dateRange: 'من 12/2/2024 - 11/2/2024',
                status: 'منتهي',
                statusColor: ColorName.red,
                borderColor: ColorName.red,
                backgroundColor: ColorName.red.withOpacity(.04),
              ),
              const SizedBox(height: 24),
              _buildSubscriptionItem(
                title: 'الاشتراك 1',
                price: 'مجاني',
                dateRange: 'من 12/2/2024 - 11/2/2024',
                status: 'منتهي',
                statusColor: ColorName.red,
                borderColor: ColorName.red,
                backgroundColor: ColorName.red.withOpacity(.04),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Reusable method to build a subscription item
  Widget _buildSubscriptionItem({
    required String title,
    required String price,
    required String dateRange,
    required String status,
    required Color statusColor,
    required Color borderColor,
    required Color backgroundColor,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.style14.copyWith(
            fontWeight: FontWeight.w500,
            color: ColorName.black,
          ),
        ),
        const SizedBox(height: 4),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: backgroundColor,
            border: Border.all(
              color: borderColor,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Assets.icons.subscriptionPrice.svg(),
                      const SizedBox(width: 5),
                      Text(
                        'قيمة الاشتراك = $price',
                        style: TextStyles.style12.copyWith(
                          fontWeight: FontWeight.w500,
                          color: ColorName.black,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: statusColor,
                    ),
                    child: Text(
                      status,
                      style: TextStyles.style10,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Assets.icons.calendar.svg(),
                  const SizedBox(width: 5),
                  Text(
                    dateRange,
                    style: TextStyles.style12.copyWith(
                      fontWeight: FontWeight.w500,
                      color: ColorName.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
