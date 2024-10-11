import 'package:office_app/core/utils/constants/app_import.dart';
import 'package:office_app/shared/custom_button.dart';

messageDialog() => Get.dialog(
      barrierDismissible: false,
      Dialog(
        shape: _buildDialogShape(), // Build the dialog shape
        backgroundColor: ColorName.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: _buildDialogContent(), // Build the content of the dialog
        ),
      ),
    );

// Build the shape of the dialog
RoundedRectangleBorder _buildDialogShape() {
  return RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  );
}

// Build the content of the dialog
Widget _buildDialogContent() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisSize: MainAxisSize.min,
    children: [
      _buildCloseButton(), // Build the close button
      const SizedBox(height: 16),
      _buildDialogImage(), // Build the image
      const SizedBox(height: 16),
      _buildPhoneButton(), // Build the phone number button
      const SizedBox(height: 16),
      _buildCallButton(), // Build the call button
    ],
  );
}

// Build the close button
Widget _buildCloseButton() {
  return GestureDetector(
    onTap: () => Get.back(),
    child: Container(
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        border: Border.all(color: ColorName.downriver),
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.close_rounded,
        color: ColorName.downriver,
        size: 20,
      ),
    ),
  );
}

// Build the image inside the dialog
Widget _buildDialogImage() {
  return Assets.images.blackFriday.image();
}

// Build the phone number button
Widget _buildPhoneButton() {
  return CustomButton(
    backgroundColor: ColorName.white,
    foregroundColor: ColorName.downriver,
    borderSide: const BorderSide(
      color: ColorName.downriver,
    ),
    body: const Text(
      '00966-123-123-123',
      style: TextStyle(
        fontSize: 16,
      ),
    ),
    onTap: () {},
  );
}

// Build the call button
Widget _buildCallButton() {
  return CustomButton(
    backgroundColor: ColorName.downriver,
    foregroundColor: ColorName.white,
    borderSide: BorderSide.none,
    body: Assets.icons.phone.svg(),
    onTap: () {},
  );
}
