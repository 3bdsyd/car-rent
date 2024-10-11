import 'package:office_app/core/utils/constants/app_import.dart';

class FrequentlyQuestionsScreen extends StatelessWidget {
  const FrequentlyQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'الاسئلة المتكررة',
      ),
      body: ListView.builder(
        itemCount: faqItems.length,
        itemBuilder: (context, index) {
          final item = faqItems[index];
          return ExpansionTile(
            title: Text(
              item.question,
              style: TextStyles.style13.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Text(
                  item.answer,
                  style: TextStyles.style13,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
