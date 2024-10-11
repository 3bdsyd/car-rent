import 'package:office_app/core/utils/constants/app_import.dart';
import 'package:office_app/src/profile/forget_password/view/forget_passowrd_screen.dart';

class UpdatePassowrdScreen extends StatelessWidget {
  const UpdatePassowrdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: const CustomAppBar(
        title: 'تغيير كلمة المرور',
        showAction: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              CustomTextField(
                controller: TextEditingController(),
                label: 'كلمة المرور السابقة',
                icon: Assets.icons.password.svg(),
                suffixIcon: Assets.icons.showPassword.svg(),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Text(
                    'هل نسيت كلمة المرور ؟',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: ColorName.downriver,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(const ForgetPasswordScreen());
                    },
                    child: const Text(
                      ' إعادة تعيين',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: ColorName.hokeyPokey,
                        decorationColor: ColorName.hokeyPokey,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: TextEditingController(),
                enabled: false,
                suffixIcon: Assets.icons.showPassword.svg(),
                label: 'كلمة المرور الجديدة',
                icon: Assets.icons.password.svg(),
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: TextEditingController(),
                enabled: false,
                suffixIcon: Assets.icons.showPassword.svg(),
                label: 'تأكيد كلمة المرور الجدبدة',
                icon: Assets.icons.password.svg(),
              ),
              const SizedBox(height: 25),
              CustomButton(
                backgroundColor: ColorName.downriver,
                foregroundColor: ColorName.white,
                borderSide: const BorderSide(
                  color: ColorName.downriver,
                ),
                body: const Text('حفظ التعديل'),
                onTap: () {},
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
