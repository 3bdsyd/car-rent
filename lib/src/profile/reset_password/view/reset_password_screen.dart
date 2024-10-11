import 'package:office_app/core/utils/constants/app_import.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: const CustomAppBar(
        title: 'اعادة تعيين كلمة المرور',
        showAction: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'ادخل كلمة المرور الجديدة',
                style: TextStyle(
                  color: ColorName.hokeyPokey,
                  fontSize: 14,
                  fontWeight: FontWeight.w100,
                ),
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: TextEditingController(),
                label: 'كلمة المرور الجديدة',
                icon: Assets.icons.password.svg(),
                suffixIcon: SizedBox(
                  height: 30,
                  child: Assets.icons.showPassword.svg(),
                ),
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: TextEditingController(),
                enabled: false,
                suffixIcon: Assets.icons.showPassword.svg(),
                label: 'تأكيد كلمة المرور',
                icon: Assets.icons.password.svg(),
              ),
              const SizedBox(height: 25),
              CustomButton(
                backgroundColor: ColorName.downriver,
                foregroundColor: ColorName.white,
                borderSide: const BorderSide(
                  color: ColorName.downriver,
                ),
                body: const Text('حفظ'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
