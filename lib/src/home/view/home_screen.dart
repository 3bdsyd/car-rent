import 'package:office_app/core/utils/constants/app_import.dart';
import 'package:office_app/src/home/view/widgets/home_body_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      appBar: AppBarWidget(),
      drawer: DrawerWidget(),
      bottomNavigationBar: NavigationBarWidget(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: HomeBodyWidget(),
      ),
    );
  }
}
