import 'dart:convert';
import 'package:bukit_vista/model/user_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class HomeDashboardPresenter extends GetxController{

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getUserGuest();
  }

  final userModel = UserModel().obs;
  getUserGuest()async{
    var url = "https://randomuser.me/api/?results=30";
    final response = await get(Uri.parse(url));
    dynamic data = jsonDecode(response.body);
    if(response.statusCode==200){
      userModel.value = UserModel.fromJson(data);
      // print(response.statusCode);
      // print(userModel);
    }else{
      print(response.statusCode);
      print(response.body);
    }
   update();
  }
}