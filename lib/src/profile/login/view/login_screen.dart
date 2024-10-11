import 'package:office_app/core/utils/constants/app_import.dart';
import 'package:office_app/src/profile/forget_password/view/forget_passowrd_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: const CustomAppBar(
        title: 'الدخول لمؤسسة مسجلة مسبقاً',
        showAction: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'مرحباً بعودتك !',
                style: TextStyle(
                  color: ColorName.hokeyPokey,
                  fontSize: 14,
                  fontWeight: FontWeight.w100,
                ),
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: TextEditingController(),
                label: 'رقم الهاتف',
                icon: Assets.icons.phoneNumber.svg(),
                suffixIcon: SizedBox(
                  height: 30,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      icon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Assets.icons.arrowDropdown.svg(),
                      ),
                      items: const [
                        DropdownMenuItem(
                          child: Text(
                            '966+',
                            style: TextStyles.style14,
                          ),
                        )
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: TextEditingController(),
                enabled: false,
                suffixIcon: Assets.icons.showPassword.svg(),
                label: 'كلمة المرور',
                icon: Assets.icons.password.svg(),
              ),
              const SizedBox(height: 4),
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
                      'إعادة تعيين',
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
              const SizedBox(height: 25),
              CustomButton(
                backgroundColor: ColorName.downriver,
                foregroundColor: ColorName.white,
                borderSide: const BorderSide(
                  color: ColorName.downriver,
                ),
                body: const Text('تسجيل الدخول'),
                onTap: () {},
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  // Navigate to password change screen
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'ليس  لديك حساب ؟',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: ColorName.downriver,
                      ),
                    ),
                    const SizedBox(width: 3),
                    GestureDetector(
                      onTap: () {
                        Get.to(const RegisterScreen());
                      },
                      child: const Text(
                        'إنشاء حساب لمؤسسة جديدة',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
