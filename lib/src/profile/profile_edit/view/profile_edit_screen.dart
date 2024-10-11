// import 'package:car_rent/core/gen/assets.gen.dart';
// import 'package:car_rent/core/gen/colors.gen.dart';
// import 'package:car_rent/shared/custom_button.dart';
// import 'package:car_rent/shared/custom_textfield.dart';
// import 'package:car_rent/src/profile/update_password/view/update_password_view.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class ProfileEditScreen extends StatelessWidget {
//   const ProfileEditScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorName.white,
//       appBar: AppBar(
//         backgroundColor: ColorName.white,
//         title: const Text(
//           'تعديل الملف الشخصي',
//           style: TextStyle(
//             color: ColorName.downriver,
//             fontSize: 18,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         centerTitle: true,
//         leading: IconButton(
//           onPressed: () {
//             Get.back();
//           },
//           icon: Assets.icons.back.svg(fit: BoxFit.scaleDown),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const SizedBox(height: 16),
//               CustomTextField(
//                 controller: TextEditingController(),
//                 label: 'الاسم',
//                 icon: Assets.icons.person2.svg(),
//               ),
//               const SizedBox(height: 16),
//               CustomTextField(
//                 controller: TextEditingController(text: '524987630'),
//                 enabled: false,
//                 suffixIcon: const Text(
//                   '963+',
//                   style: TextStyle(
//                     color: ColorName.downriver,
//                   ),
//                 ),
//                 label: 'رقم الهاتف (لا يمكن تعديل رقم الهاتف)',
//                 icon: Assets.icons.phoneNumber.svg(),
//               ),
//               const SizedBox(height: 25),
//               GestureDetector(
//                 onTap: () {
//                   Get.to(const UpdatePassowrdScreen());
//                 },
//                 child: const Text(
//                   'تغيير كلمة المرور',
//                   style: TextStyle(
//                     fontWeight: FontWeight.w300,
//                     color: ColorName.downriver,
//                     decorationColor: ColorName.downriver,
//                     decoration: TextDecoration.underline,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 16),
//               CustomButton(
//                 backgroundColor: ColorName.downriver,
//                 foregroundColor: ColorName.white,
//                 borderSide: const BorderSide(
//                   color: ColorName.downriver,
//                 ),
//                 body: const Text('حفظ التعديل'),
//                 onTap: () {},
//               ),
//               const SizedBox(height: 16),
//               CustomButton(
//                 backgroundColor: ColorName.white,
//                 foregroundColor: ColorName.red,
//                 borderSide: const BorderSide(
//                   color: ColorName.red,
//                 ),
//                 body: Text('حذف الحساب'),
//                 onTap: () {},
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
