import 'package:http/http.dart' as http;
import 'package:onboarding/Utils/endpoinds.dart';

class ApiServicess {
  static Future<http.Response> login({
    required String email,
    required String password,
  }) async {
    return await http.post(
      Apiendpoinds.login,
      body: {"email": email, "password": password},
    );
  }
}

// class ApiServicess{
//
//   static Future<http.Response> login({required String email,required String password})async{
//
//     final response = await http.post(
//         Apiendpoinds.login,
//         body: {
//           "email":email,
//           "password":password,
//         }
//     );
//     return response;
//
//   }
//
// }
