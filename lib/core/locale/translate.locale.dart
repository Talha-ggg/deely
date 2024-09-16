import 'package:get/get.dart';

class TranslationService extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'appTitle': 'DateMe',
      "onboarding_credits_title": "Credits",
      "onboarding_credits_description": "In the application, credits are considered currency. For credits, you can buy numbers of other users for communication.",
      "onboarding_credits_price": "1 credit - \$0.99",
      "onboarding_buying_number_title": "Buying a number",
      "onboarding_buying_number_description": "You can specify the number of credits for which other users can buy your phone number. Half of the credits from each purchase of your phone number will be credited to your balance.",
      "onboarding_top_users_title": "Top - users",
      "onboarding_top_users_description": "You can also buy yourself a place in the top. A place in the top is bought for one day and increases the number of visits to your profile.",
      "top_users" : "Top Users",
      "chat_msg1":"Hello",
    }
  };
}
