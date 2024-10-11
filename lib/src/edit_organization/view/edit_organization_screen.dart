import 'package:office_app/core/utils/constants/app_import.dart';

class EditOrganizationScreen extends StatelessWidget {
  const EditOrganizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: const CustomAppBar(
        title: 'تعديل بيانات المؤسسة',
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
                  Column(
                    children: [
                      Assets.icons.fieldType.image(),
                      const SizedBox(height: 8),
                      const Text(
                        'لوغو المؤسسة',
                        style: TextStyles.style12,
                      ),
                    ],
                  ),
                  const SizedBox(width: 12),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Assets.icons.addImage.svg(),
                      const Icon(
                        Icons.add,
                        size: 15,
                        color: ColorName.downriver,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              CustomTextField(
                enabled: false,
                controller: TextEditingController(text: '542134213'),
                label: 'رقم الهاتف',
                icon: Assets.icons.phoneNumber.svg(),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    '+966',
                    style: TextStyles.style14.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: TextEditingController(),
                enabled: false,
                label: 'اسم المؤسسة',
                icon: Assets.icons.organization.svg(),
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: TextEditingController(),
                enabled: false,
                suffixIcon: Assets.icons.arrowDropdown.svg(),
                label: 'المدينة',
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'اختر المكان',
                  style: TextStyles.style14.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: ColorName.alto),
                        ),
                        child: Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: [1],
                              onChanged: (v) {},
                            ),
                            const Text('المطار'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      flex: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: ColorName.alto),
                        ),
                        child: Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: [1],
                              onChanged: (v) {},
                            ),
                            const Text('خارج المطار (اكتب اسم الحي)'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'حدد موقع المكتب',
                  style: TextStyles.style14.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: Stack(
                  children: [
                    Assets.images.site.image(width: 180),
                    Positioned(
                      bottom: 20,
                      right: 10,
                      child: Assets.icons.locationMark.svg(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              CustomTextField(
                enabled: false,
                controller: TextEditingController(text: 'لم يحدد'),
                label: 'أوقات العمل',
                suffixIcon: Assets.icons.arrowDropdown.svg(),
              ),
              const SizedBox(height: 16),
              CustomTextField(
                enabled: false,
                controller: TextEditingController(),
                label: 'اسم المسؤول عن خدمة العملاء في هذا الفرع',
                icon: Assets.icons.client.svg(
                  colorFilter: const ColorFilter.mode(
                    ColorName.downriver,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              CustomTextField(
                enabled: false,
                controller: TextEditingController(),
                label: 'رقم الهاتف لخدمة العملاء لهذا الفرع او الرقم المجاني',
                icon: Assets.icons.phoneNumber.svg(),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    '+966',
                    style: TextStyles.style14.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              CustomTextField(
                enabled: false,
                controller: TextEditingController(),
                label: 'رقم الواتس اب لخدمة العملاء ان وجد',
                icon: Assets.icons.whatsapp.svg(
                  height: 16,
                  width: 16,
                  colorFilter: const ColorFilter.mode(
                    ColorName.downriver,
                    BlendMode.srcIn,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    '+966',
                    style: TextStyles.style14.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'صورة السجل التجاري (ليطلع عليها ادارة التطبيق فقط)',
                  style: TextStyles.style14.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: Assets.images.commercialRegister.image(width: 80),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'صورة المكتب من الخارج',
                  style: TextStyles.style14.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: Assets.images.outsideOffice.image(width: 100),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'صورة عقد الإيجار (ليطلع عليها العملاء للاطمئنان فقط )',
                  style: TextStyles.style14.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: Assets.images.leaseContract.image(),
              ),
              const SizedBox(height: 25),
              CustomButton(
                backgroundColor: ColorName.white,
                foregroundColor: ColorName.red,
                borderSide: const BorderSide(
                  color: ColorName.red,
                ),
                body: const Text('حذف الحساب'),
                onTap: () {},
              ),
              const SizedBox(height: 16),
              Text(
                'تغيير كلمة المرور',
                style: TextStyles.style14.copyWith(
                  color: ColorName.black,
                  decoration: TextDecoration.underline,
                  decorationColor: ColorName.black,
                ),
              ),
              const SizedBox(height: 12),
              CustomButton(
                backgroundColor: ColorName.downriver,
                foregroundColor: ColorName.white,
                borderSide: const BorderSide(
                  color: ColorName.downriver,
                ),
                body: const Text('حفظ'),
                onTap: () {},
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
