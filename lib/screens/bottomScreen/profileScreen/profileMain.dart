import 'package:ecommerce_app/config/colorFile.dart';
import 'package:ecommerce_app/controller/bottomController/profileController.dart';
import 'package:ecommerce_app/screens/bottomScreen/profileScreen/profileCommon.dart';
import 'package:ecommerce_app/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileMainPage extends StatelessWidget {
  ProfileMainPage({super.key});

  final controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar(isAction: true, actionIcon: Icons.search),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "My Profile",
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(16),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: AppColors.containerColor,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 00),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Yash Sitapara",
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      maxLines: 01,
                      "yashsitapara855@gmail.com",
                      style: TextStyle(fontSize: 15, color: AppColors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.profileOption.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.to(
                    () => ProfileCommon(),
                    arguments: {
                      "profileIndex": index,
                    },
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 16),
                      child: Row(
                        children: [
                          Text(
                            "${controller.profileOption[index]["mainText"]}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary,
                              fontSize: 20,
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: AppColors.grey,
                              size: 36,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, bottom: 8),
                      child: Text(
                        "${controller.profileOption[index]["childText"]}",
                        style: TextStyle(color: AppColors.grey, fontSize: 15),
                      ),
                    ),
                    Container(
                      height: 1,
                      width: Get.width,
                      color: AppColors.grey,
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(
            height: Get.height / 20,
          ),
        ],
      ),
    );
  }
}
