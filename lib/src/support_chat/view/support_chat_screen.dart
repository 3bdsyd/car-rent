import 'package:office_app/core/utils/constants/app_import.dart';

class SupportChatScreen extends StatelessWidget {
  const SupportChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context), // Build the app bar
      bottomNavigationBar:
          _buildBottomNavigationBar(context), // Build the bottom navigation bar
      body: _buildChatBody(context), // Build the body of the chat screen
    );
  }

  // Build the app bar
  CustomAppBar _buildAppBar(BuildContext context) {
    return const CustomAppBar(
      title: 'مراسلة الدعم الفني',
    );
  }

  // Build the bottom navigation bar
  Padding _buildBottomNavigationBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        height: 60,
        padding: const EdgeInsets.only(top: 5),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: ColorName.mercury,
            ),
          ),
        ),
        child: _buildMessageInputRow(), // Build the input row for messages
      ),
    );
  }

  // Build the message input row
  Row _buildMessageInputRow() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration:
                _buildInputDecoration(), // Build the input field decoration
          ),
        ),
        const SizedBox(width: 5),
        Assets.icons.attachment.svg(),
        const SizedBox(width: 5),
        Assets.icons.camera.svg(),
        const SizedBox(width: 5),
        Assets.icons.microphone.svg(),
      ],
    );
  }

  // Build the input decoration for the message field
  InputDecoration _buildInputDecoration() {
    return InputDecoration(
      prefixIcon: IconButton(
        onPressed: () {},
        icon: Assets.icons.subtract.svg(),
      ),
      filled: true,
      fillColor: ColorName.athensGray,
      hintText: 'اكتب رسالتك هنا',
      hintStyle: TextStyle(
        fontWeight: FontWeight.w100,
        fontSize: 12,
        color: ColorName.downriver.withOpacity(.5),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 15),
      border: UnderlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  // Build the chat body
  Padding _buildChatBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return _buildMessageItem(context, index); // Build each message item
        },
      ),
    );
  }

  // Build individual message items
  Column _buildMessageItem(BuildContext context, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (!messages[index].isSentByUser)
          _buildReceivedMessage(context, index), // Build the received message
        if (messages[index].isSentByUser)
          _buildSentMessage(context, index), // Build the sent message
        const SizedBox(height: 10), // Space between message pairs
      ],
    );
  }

  // Build the received message (aligned to the left)
  Align _buildReceivedMessage(BuildContext context, int index) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.only(
          left: MediaQuery.sizeOf(context).width / 8,
          bottom: 5,
        ),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: ColorName.downriver.withOpacity(.04),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
        ),
        child: Text(
          '${messages[index].message} 12:00 م',
          style: const TextStyle(),
        ),
      ),
    );
  }

  // Build the sent message (aligned to the right)
  Align _buildSentMessage(BuildContext context, int index) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(
          right: MediaQuery.sizeOf(context).width / 8,
          bottom: 5,
        ),
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: ColorName.hokeyPokey,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Text(
          '${messages[index].message} 12:00 م',
          style: const TextStyle(),
        ),
      ),
    );
  }
}
