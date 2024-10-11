import 'package:office_app/core/utils/constants/app_import.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildListView(), // Build the list view section
        const SizedBox(height: 45),
      ],
    );
  }

  // Build the list view with home items
  Widget _buildListView() {
    return Expanded(
      child: ListView.separated(
        itemCount: homeItems.length,
        itemBuilder: (context, index) =>
            _buildListItem(index), // Build each list item
        separatorBuilder: (context, _) =>
            const SizedBox(height: 24), // Add separator between items
      ),
    );
  }

  // Build a single list item based on the index
  Widget _buildListItem(int index) {
    return SizedBox(
      child: Column(
        children: [
          SizedBox(height: index == 0 ? 32 : 0),
          _buildCard(index), // Build the card for the item
        ],
      ),
    );
  }

  // Build the card for a specific item
  Widget _buildCard(int index) {
    return GestureDetector(
      onTap: homeItems[index].onTap,
      child: Card(
        margin: EdgeInsets.zero,
        surfaceTintColor: ColorName.white,
        color: ColorName.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child:
              _buildRowContent(index), // Build the row content inside the card
        ),
      ),
    );
  }

  // Build the row containing icon, text, and number for each item
  Widget _buildRowContent(int index) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              homeItems[index].icon,
              const SizedBox(width: 9),
              _buildTextContent(
                  index), // Build the text content (title and subtitle)
            ],
          ),
        ),
        const SizedBox(width: 10),
        Text(
          homeItems[index].number.toString(),
          style: TextStyles.style16,
        ),
      ],
    );
  }

  // Build the title and subtitle content for each item
  Widget _buildTextContent(int index) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            homeItems[index].title.toString(),
            style: TextStyles.style14.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          if (homeItems[index].subTitle != null) ...[
            Text(
              homeItems[index].subTitle.toString(),
              style: TextStyles.style12,
            ),
          ]
        ],
      ),
    );
  }
}
