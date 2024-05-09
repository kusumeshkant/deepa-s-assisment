import 'package:assisment_task/service/dashBoardnew_service.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final DashboardNewsServicesController controller =
      Get.put(DashboardNewsServicesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xff0E6FFF),
        child: Stack(
          children: [
            Positioned(
              top: 100,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Dashboard",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .54,
                    ),
                    Image.asset("assets/setting_icon.png"),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 180,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      height: MediaQuery.of(context).size.height * .9,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.92),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        physics: const AlwaysScrollableScrollPhysics(),
                        children: [
                          const Text(
                            "Good morning",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Text(
                                "Ajay Manva",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset("assets/hi_icon.png"),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, top: 10, right: 10),
                            height: 200,
                            width: 328,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.92),
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Overview",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff999CA0),
                                      ),
                                    ),
                                    Container(
                                      height: 28,
                                      width: 128,
                                      padding: const EdgeInsets.only(
                                          left: 3.5, right: 3.5),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xff999CA0)),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: const Row(
                                        children: [
                                          Text(
                                            "22 AUG",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            "-",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            "23 SEPT",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          Icon(
                                            Icons.timer,
                                            size: 15,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                SizedBox(
                                  height: 136,
                                  width: 390,
                                  child: Image.asset(
                                    "assets/chart.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            height: 120,
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.only(
                              left: 2,
                            ),
                            child: Obx(
                              () => ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: controller.dataLists.length,
                                itemBuilder: (context, index) {
                                  var data = controller.dataLists[index];
                                  return Container(
                                    margin: const EdgeInsets.only(right: 20),
                                    height: 120,
                                    width: 120,
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(data["image"].toString()),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          data['address'].toString(),
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          data["service_type"].toString(),
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff999CA0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(left: 10, top: 20, right: 10),
                            height: 48,
                            width: MediaQuery.of(context).size.width * .8,
                            decoration: BoxDecoration(
                              color: Color(0xffD8D8D8),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/analytics_icon.png"),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "View Analytics",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Obx(
                                () => Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        dateFormate(controller
                                            .toplinksList[0].createdAt);
                                        controller.isRecentsLinks.value = false;
                                        controller.isTopLinks.value = true;
                                      },
                                      child: Container(
                                        height: 36,
                                        width: 110,
                                        decoration: BoxDecoration(
                                          color: controller.isTopLinks.value
                                              ? Color(0xff0E6FFF)
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(18),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Top Links",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color:
                                                    controller.isTopLinks.value
                                                        ? Color(0xffFFFFFF)
                                                        : Color(0xff999CA0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 13,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        controller.isRecentsLinks.value = true;
                                        controller.isTopLinks.value = false;
                                      },
                                      child: Container(
                                        height: 36,
                                        width: 110,
                                        decoration: BoxDecoration(
                                          color: controller.isRecentsLinks.value
                                              ? Color(0xff0E6FFF)
                                              : Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(18),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Recent Links",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: controller
                                                      .isRecentsLinks.value
                                                  ? Color(0xffFFFFFF)
                                                  : Color(0xff999CA0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xff999CA0),
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  Icons.search,
                                  color: Color(0xff999CA0),
                                ),
                              )
                            ],
                          ),
                          Obx(
                            () => Container(
                              height: 400,
                              width: MediaQuery.of(context).size.width * .9,
                              margin: EdgeInsets.only(top: 20),
                              child: ListView.builder(
                                  padding: EdgeInsets.only(top: 5, bottom: 5),
                                  itemCount: controller.isRecentsLinks.value
                                      ? controller.recentlinksList.length
                                      : controller.toplinksList.length,
                                  itemBuilder: (context, index) {
                                    var recentLinkList =
                                        controller.recentlinksList[index];
                                    var topLinkLists =
                                        controller.toplinksList[index];
                                    return Container(
                                      height: 116,
                                      width: MediaQuery.of(context).size.width *
                                          .9,
                                      margin:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 15, top: 10, right: 15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 50,
                                                  width: 200,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        height: 48,
                                                        width: 48,
                                                        child: Image.network(controller
                                                                .isRecentsLinks
                                                                .value
                                                            ? recentLinkList
                                                                .originalImage
                                                            : topLinkLists
                                                                .originalImage),
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          SizedBox(
                                                            width: 130,
                                                            child: Text(
                                                              "${controller.isRecentsLinks.value ? recentLinkList.title : topLinkLists.title}",
                                                              style: TextStyle(
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            dateFormate(controller
                                                                    .isRecentsLinks
                                                                    .value
                                                                ? recentLinkList
                                                                    .createdAt
                                                                : topLinkLists
                                                                    .createdAt),
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Color(
                                                                    0xff999CA0)),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      "${controller.isRecentsLinks.value ? recentLinkList.totalClicks : topLinkLists.totalClicks}",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    const Text(
                                                      "Clicks",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Color(
                                                              0xff999CA0)),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          DottedBorder(
                                            color: Color(0xffA6C7FF),
                                            borderType: BorderType.RRect,
                                            radius: Radius.circular(8),
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  left: 10,
                                                  top: 15,
                                                  right: 10,
                                                  bottom: 13),
                                              decoration: BoxDecoration(
                                                color: Color(0xffE8F1FF),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "${controller.isRecentsLinks.value ? recentLinkList.webLink : topLinkLists.webLink}",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff0E6FFF),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 24,
                                                    width: 24,
                                                    child: Image.asset(
                                                        "assets/copy_icon.png"),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  String dateFormate(String data) {
    var val = data.split("T");
    DateTime dateTime = DateTime.parse(val[0]);
    String formattedDate = DateFormat('dd-MMM-yyyy').format(dateTime);
    print(formattedDate);
    return formattedDate.toString();
  }
}
