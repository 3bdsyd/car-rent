import 'package:office_app/core/utils/constants/app_import.dart';

class AnalysisScreen extends StatelessWidget {
  const AnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'التحليل'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 12),
            _buildFilterSection(),
            const SizedBox(height: 12),
            _buildYearSelectionDropdown(),
            _buildAnalysisDetails(),
          ],
        ),
      ),
    );
  }

  // Builds the filter section containing three dropdowns
  Widget _buildFilterSection() {
    return SizedBox(
      height: 42,
      child: Row(
        children: [
          Expanded(
            child: _buildDropdown('النوع'),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: _buildDropdown('سنة الصنع'),
          ),
          const SizedBox(width: 22),
          Expanded(
            child: _buildStaticTextField('ي ي ي- 3213'),
          ),
        ],
      ),
    );
  }

  // Builds a dropdown button with the given label
  Widget _buildDropdown(String label) {
    return DropdownButtonHideUnderline(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorName.downriver,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: DropdownButton<String>(
          dropdownColor: ColorName.white,
          isExpanded: true,
          icon: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Assets.icons.arrowDropdown.svg(),
          ),
          items: [
            DropdownMenuItem(
              child: Text(
                label,
                style: TextStyles.style14.copyWith(
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
          onChanged: (Object? value) {},
        ),
      ),
    );
  }

  // Builds a static text field for displaying a non-editable value
  Widget _buildStaticTextField(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorName.downriver,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Text(
        text,
        style: TextStyles.style14.copyWith(
          color: ColorName.downriver.withOpacity(.3),
          overflow: TextOverflow.ellipsis,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  // Builds the dropdown for selecting the year
  Widget _buildYearSelectionDropdown() {
    return SizedBox(
      height: 42,
      child: DropdownButtonHideUnderline(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorName.downriver,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: DropdownButton<String>(
            dropdownColor: ColorName.white,
            isExpanded: true,
            icon: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Assets.icons.arrowDropdown.svg(),
            ),
            items: [
              DropdownMenuItem(
                child: Text(
                  'سنة الصنع',
                  style: TextStyles.style14.copyWith(
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
            onChanged: (Object? value) {},
          ),
        ),
      ),
    );
  }

  // Builds the section for displaying the detailed analysis information
  Widget _buildAnalysisDetails() {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => Column(
          children: [
            if (index == 0) const SizedBox(height: 20),
            _buildAnalysisCard(),
            if (index == 9) const SizedBox(height: 20),
          ],
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemCount: 10,
      ),
    );
  }

  // Builds a card displaying specific analysis data
  Widget _buildAnalysisCard() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorName.downriver.withOpacity(.3),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          _buildAnalysisHeader(),
          const SizedBox(height: 8),
          Divider(
            color: ColorName.downriver.withOpacity(.25),
          ),
          _buildAnalysisContent(),
          Divider(
            color: ColorName.downriver.withOpacity(.25),
          ),
          const SizedBox(height: 16),
          _buildAnalysisFooter(),
        ],
      ),
    );
  }

  // Builds the header part of the analysis card
  Widget _buildAnalysisHeader() {
    return Row(
      children: [
        Assets.images.apps.image(),
        const SizedBox(width: 7),
        const Text(
          'التطبيق',
          style: TextStyles.style12,
        ),
      ],
    );
  }

  // Builds the content section of the analysis card
  Widget _buildAnalysisContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'رفض حجز من التطبيق',
          style: TextStyles.style14.copyWith(
            color: ColorName.hokeyPokey,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
            decorationColor: ColorName.hokeyPokey,
          ),
        ),
        const SizedBox(width: 7),
        Text(
          '16/4/2024 - 3:50AM',
          style: TextStyles.style14.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  // Builds the footer part of the analysis card
  Widget _buildAnalysisFooter() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Assets.images.carRed.image(),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'كامري - 2023 - احمر',
                  style: TextStyles.style14.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Text(
                      'أ أ أ - 2222',
                      style: TextStyles.style12,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '72#',
                      style: TextStyles.style12.copyWith(
                        color: ColorName.downriver.withOpacity(.5),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Assets.icons.jewel.svg(),
            const SizedBox(width: 7),
            Text(
              'مضمونة',
              style: TextStyles.style12.copyWith(
                color: ColorName.mountainMeadow,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
