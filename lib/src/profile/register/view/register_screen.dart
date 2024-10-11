import 'package:office_app/core/utils/constants/app_import.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: const CustomAppBar(
        title: 'إنشاء حساب لمؤسسة جديدة',
        showAction: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
              const SizedBox(height: 16),
              CustomTextField(
                controller: TextEditingController(),
                enabled: false,
                suffixIcon: Assets.icons.showPassword.svg(),
                label: 'تأكيد كلمة المرور',
                icon: Assets.icons.password.svg(),
              ),
              const SizedBox(height: 17),
              Row(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorName.downriver),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'اوافق على ',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: ColorName.downriver,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(const TermsConditions());
                    },
                    child: const Text(
                      'الشروط و الأحكام',
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
                  Get.to(const LoginScreen());
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'لديك حساب بالفعل ؟',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: ColorName.downriver,
                      ),
                    ),
                    SizedBox(width: 3),
                    Text(
                      'الدخول لمؤسسة مسجلة مسبقاً',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: ColorName.hokeyPokey,
                        decorationColor: ColorName.hokeyPokey,
                        decoration: TextDecoration.underline,
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
