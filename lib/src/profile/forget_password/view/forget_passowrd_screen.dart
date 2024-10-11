import 'package:office_app/core/utils/constants/app_import.dart';
import 'package:office_app/src/profile/verification_code/view/verification_code_screen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: const CustomAppBar(
        title: 'نسيت كلمة المرور',
        showAction: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'الرجاء ادخال رقم الهاتف لإعادة تعيين كلمة المرور',
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
              const SizedBox(height: 25),
              CustomButton(
                backgroundColor: ColorName.downriver,
                foregroundColor: ColorName.white,
                borderSide: const BorderSide(
                  color: ColorName.downriver,
                ),
                body: const Text('ارسال رمز التحقق'),
                onTap: () {
                  Get.to(const VerificationCodeScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
