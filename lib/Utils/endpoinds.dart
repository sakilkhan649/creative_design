import 'package:onboarding/Utils/Config/config.dart';

class Apiendpoinds{

  static const String apiurl="${AppConfig.baseurl}/api/v1";
  static Uri login=Uri.parse("$apiurl/login");

}