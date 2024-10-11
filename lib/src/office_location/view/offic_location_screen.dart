import 'package:office_app/core/utils/constants/app_import.dart';

class OfficLocationScreen extends StatelessWidget {
  const OfficLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'تحديد موقع المكتب'),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Assets.images.site.image(
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: CustomButton(
              backgroundColor: ColorName.downriver,
              foregroundColor: ColorName.white,
              borderSide: BorderSide.none,
              onTap: () {
                // Function to save location
              },
              body: const Text('حفظ الموقع'),
            ),
          ),
        ],
      ),
    );
  }
}
