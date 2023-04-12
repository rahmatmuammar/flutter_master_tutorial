// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, prefer_const_literals_to_create_immutables

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_master_tutorial/utils/app_layout.dart';
import 'package:flutter_master_tutorial/utils/app_styles.dart';
import 'package:flutter_master_tutorial/widgets/column_layout.dart';
import 'package:flutter_master_tutorial/widgets/layout_builder_widget.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/logo_home.png'))),
              ),
              Gap(AppLayout.getHeight(40)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Tiket Dipesan', style: Styles.headLineStyle1),
                  Gap(AppLayout.getHeight(2)),
                  Text('Soekarno-Hatta',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500)),
                  Gap(AppLayout.getHeight(8)),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(100)),
                        color: Color(0xFFFEF4F3)),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(3),
                        vertical: AppLayout.getHeight(3)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(3)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF526799)),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text(
                          'Status Premium',
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        ),
                        Gap(AppLayout.getHeight(5)),
                      ],
                    ),
                  )
                ],
              ),
              Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Ubah',
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(color: Colors.grey.shade300),
          Gap(AppLayout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(18))),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: Color(0xFF264CD2))),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(25),
                    vertical: AppLayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                          FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                          color: Styles.primaryColor,
                          size: 27),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Anda dapat penghargaan!',
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          'Anda sudah terbang 95 kali di tahun ini',
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          Text("Total Tempuh", style: Styles.headLineStyle2),
          Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                  color: Styles.bgColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1)
                  ]),
              child: Column(
                children: [
                  Gap(AppLayout.getHeight(15)),
                  Text(
                    '43251',
                    style: TextStyle(
                        fontSize: 45,
                        color: Styles.textColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Jarak Terkumpul',
                          style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                      Text('${DateFormat('d MMM yyyy').format(DateTime.now())}',
                          style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                    ],
                  ),
                  Gap(AppLayout.getHeight(4)),
                  Divider(color: Colors.grey.shade300),
                  Gap(AppLayout.getHeight(4)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          firstText: '12041',
                          secondText: 'Kilometer',
                          alignment: CrossAxisAlignment.start,
                          isColor: false),
                      AppColumnLayout(
                          firstText: 'Garuda Indonesia',
                          secondText: 'Perjalanan dari',
                          alignment: CrossAxisAlignment.end,
                          isColor: false),
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  AppLayoutBuilderWidget(sections: 12, isColor: false),
                  Gap(AppLayout.getHeight(12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          firstText: '3421',
                          secondText: 'Kilometer',
                          alignment: CrossAxisAlignment.start,
                          isColor: false),
                      AppColumnLayout(
                          firstText: 'Batik Air',
                          secondText: 'Perjalanan dari',
                          alignment: CrossAxisAlignment.end,
                          isColor: false),
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  AppLayoutBuilderWidget(sections: 12, isColor: false),
                  Gap(AppLayout.getHeight(12)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          firstText: '4532',
                          secondText: 'Kilometer',
                          alignment: CrossAxisAlignment.start,
                          isColor: false),
                      AppColumnLayout(
                          firstText: 'Superjet',
                          secondText: 'Perjalanan dari',
                          alignment: CrossAxisAlignment.end,
                          isColor: false),
                    ],
                  ),
                ],
              )),
              Gap(AppLayout.getHeight(25)),
          InkWell(
            onTap: () {
              
            },
            child: Center(
              child: Text(
                'Cara mendapatkan jarak tempuh lebih',
                style: Styles.textStyle.copyWith(
                    color: Styles.primaryColor, fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
