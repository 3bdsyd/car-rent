import 'package:office_app/core/utils/constants/app_import.dart';
import 'package:office_app/shared/custom_button.dart';
import 'package:office_app/shared/custom_textfield.dart';

class SubmitIdeaScreen extends StatelessWidget {
  const SubmitIdeaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'تقديم فكرة',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDescriptionText(), // Description text section
              const SizedBox(height: 16),
              _buildIdeaTitleField(), // Idea title input field
              const SizedBox(height: 16),
              _buildIdeaDescriptionField(), // Idea description input field
              const SizedBox(height: 16),
              _buildImageUploadSection(), // Image upload section
              const SizedBox(height: 34),
              _buildSubmitButton(), // Submit button section
            ],
          ),
        ),
      ),
    );
  }

  // Builds the description text
  Widget _buildDescriptionText() => Center(
        child: Text(
          'قدم فكرتك و في حال الاستحسان من قبلنا سوف تحصل على مكافأة مالية',
          textAlign: TextAlign.center,
          style: TextStyles.style14.copyWith(
            color: ColorName.hokeyPokey,
            fontWeight: FontWeight.w500,
          ),
        ),
      );

  // Builds the idea title input field
  Widget _buildIdeaTitleField() => CustomTextField(
        controller: TextEditingController(),
        label: 'عنوان الفكرة',
        hintText: 'ادخل عنوان فكرتك هنا',
      );

  // Builds the idea description input field
  Widget _buildIdeaDescriptionField() => CustomTextField(
        controller: TextEditingController(),
        label: 'نبذة عن الفكرة',
        hintText: 'ادخل نص الفكرة هنا',
        maxLines: 4,
      );

  // Builds the image upload section
  Widget _buildImageUploadSection() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'إضافة صورة',
            style: TextStyles.style14.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              _buildAddImageContainer(), // Add image button
              const SizedBox(width: 16),
              _buildImagePreview(), // Preview image with remove option
            ],
          ),
        ],
      );

  // Builds the "Add Image" button
  Widget _buildAddImageContainer() => Container(
        height: 73,
        width: 73,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: ColorName.athensGray),
        ),
        child: Stack(
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
      );

  // Builds the image preview with remove option
  Widget _buildImagePreview() => Stack(
        children: [
          Assets.icons.fieldType.image(),
          Positioned(
            left: 5,
            top: 5,
            child: Assets.icons.remove.svg(),
          ),
        ],
      );

  // Builds the submit button
  Widget _buildSubmitButton() => CustomButton(
        backgroundColor: ColorName.downriver,
        foregroundColor: ColorName.downriver,
        borderSide: const BorderSide(),
        onTap: () {},
        body: const Text(
          'إرسال الفكرة',
          style: TextStyle(color: Colors.white),
        ),
      );
}
