import 'package:office_app/core/utils/constants/app_import.dart';
import 'package:office_app/src/car_not_displayed/view/car_not_displayed_screen.dart';
import 'package:office_app/src/customer_ratings/view/customer_ratings_screen.dart';
import 'package:office_app/src/rental_request/view/rental_request_screen.dart';
import 'package:office_app/src/waiting_customer_arrival/view/waiting_customer_arrival_screen.dart';

List<HomeData> homeItems = [
  HomeData(
    number: 3,
    icon: Assets.icons.rentalRequest.svg(),
    title: 'طلبات الإستئجار',
    onTap: () => Get.to(() => const RentalRequestScreen()),
  ),
  HomeData(
    number: 2,
    icon: Assets.icons.client.svg(),
    title: 'انتظار حضور العميل لتسليمه السيارة',
    onTap: () => Get.to(() => const WaitingCustomerArrivalScreen()),
  ),
  HomeData(
    number: 0,
    icon: Assets.icons.clientCar.svg(),
    title: 'انتظار عودة السيارة من العميل',
    onTap: () => Get.to(() => const WaitingCarReturnScreen()),
  ),
  HomeData(
    number: 2,
    icon: Assets.icons.clientRating.svg(),
    title: 'تقييم العملاء بعد عودة السيارة',
    onTap: () => Get.to(() => const CustomerRatingsScreen()),
  ),
  HomeData(
    number: 0,
    icon: Assets.icons.dontShowCar.svg(),
    title: 'عدم عرض السيارة في التطبيق مؤقتاً',
    subTitle: '(السبب تأجيرها من المكتب او لظرف طارئ)',
    onTap: () => Get.to(() => const CarNotDisplayedScreen()),
  ),
];
