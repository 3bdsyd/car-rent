import 'package:office_app/core/utils/constants/app_import.dart';
import 'package:office_app/src/profile/reset_password/view/reset_password_screen.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: const CustomAppBar(
        title: 'رمز التحقق',
        showAction: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'ادخل رمز التحقق المرسل الى رقم ',
                    style: TextStyle(
                      color: ColorName.hokeyPokey,
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  Assets.icons.whatsapp.svg(),
                  const Text(
                    ' whatsapp',
                    style: TextStyle(
                      color: ColorName.hokeyPokey,
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
              const Text(
                '0096612345678',
                style: TextStyle(
                  color: ColorName.hokeyPokey,
                  fontSize: 14,
                  fontWeight: FontWeight.w100,
                ),
              ),
              const SizedBox(height: 16),
              Pinput(
                length: 4,
                onCompleted: (pin) => {},
                useNativeKeyboard: true,
                defaultPinTheme: PinTheme(
                  width: 48,
                  height: 48,
                  textStyle: const TextStyle(color: ColorName.downriver),
                  decoration: BoxDecoration(
                    color: ColorName.mischka,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              CustomButton(
                backgroundColor: ColorName.downriver,
                foregroundColor: ColorName.white,
                borderSide: const BorderSide(
                  color: ColorName.downriver,
                ),
                body: const Text('تحقق'),
                onTap: () {
                  Get.to(const ResetPasswordScreen());
                },
              ),
              const SizedBox(height: 16),
              const Text(
                'لم أحصل على الرمز',
                style: TextStyle(
                  color: ColorName.downriver,
                  fontSize: 14,
                  fontWeight: FontWeight.w100,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                '0:00',
                style: TextStyle(
                  color: ColorName.downriver,
                  fontSize: 14,
                  fontWeight: FontWeight.w100,
                ),
              ),
              const SizedBox(height: 8),
              CustomButton(
                backgroundColor: ColorName.white,
                foregroundColor: ColorName.downriver,
                borderSide: const BorderSide(
                  color: ColorName.downriver,
                ),
                body: const Text('إعادة ارسال رمز التحقق'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
