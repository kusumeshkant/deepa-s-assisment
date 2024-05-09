import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/dashboardnews_model.dart';

class DashboardNewsServicesController extends GetxController {
  var dataLists = [
    {
      "image": "assets/pointing_icon.png",
      "address": "123",
      "service_type": "Today's clicks"
    },
    {
      "image": "assets/location_icon.png",
      "address": "Ahamedab..",
      "service_type": "Top Location"
    },
    {
      "image": "assets/globe_icon.png",
      "address": "Instagram",
      "service_type": "Top source"
    },
  ].obs;

  String url = 'https://api.inopenapp.com/api/v1/dashboardNew';
  String token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjU5MjcsImlhdCI6MTY3NDU1MDQ1MH0.dCkW0ox8tbjJA2GgUx2UEwNlbTZ7Rr38PVFJevYcXFI";

  var recentlinks = {}.obs;
  var recentlinksList = [].obs;
  var toplinksList = [].obs;

  var isTopLinks = true.obs;
  var isRecentsLinks = false.obs;

  getDashboardnews() async {
    try {
      final response = await http.get(Uri.parse(url), headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      });

      if (response.statusCode == 200) {
        final resp = json.decode(response.body);
        final DashboardnewsModel data = DashboardnewsModel.fromJson(resp);
        recentlinksList.value = data.data!.recentLinks!.cast<RecentLinks>();
        toplinksList.value = data.data!.topLinks!.cast<TopLinks>();
      }
    } catch (e) {
      print("error is $e");
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getDashboardnews();
  }
}
