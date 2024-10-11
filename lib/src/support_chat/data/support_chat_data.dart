import 'package:office_app/src/support_chat/model/support_chat_model.dart';

final List<SupportChatModel> messages = [
  SupportChatModel(message: "مرحباً! كيف حالك اليوم؟", isSentByUser: false),
  SupportChatModel(message: "أهلاً! أنا بخير، ماذا عنك؟", isSentByUser: true),
  SupportChatModel(
      message:
          "أنا بخير أيضاً، لقد كان لدي يوم طويل في العمل ولكن أشعر بالراحة الآن.",
      isSentByUser: false),
  SupportChatModel(
      message: "هذا جيد! هل تريد الخروج لاحقاً لتناول العشاء؟",
      isSentByUser: true),
  SupportChatModel(
      message: "بالتأكيد! سيكون من الرائع أن نلتقي ونتحدث أكثر.",
      isSentByUser: false),
  SupportChatModel(
      message: "اتفقنا، سأحجز لنا طاولة في المطعم الذي نحبه.",
      isSentByUser: true),
];
