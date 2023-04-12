// ignore_for_file: prefer_const_constructors

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_master_tutorial/screens/hotel_screen.dart';
import 'package:flutter_master_tutorial/screens/ticket_view.dart';
import 'package:flutter_master_tutorial/utils/app_info_list.dart';
import 'package:flutter_master_tutorial/utils/app_styles.dart';
import 'package:flutter_master_tutorial/widgets/double_text_widget.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text('Selamat Datang', style: Styles.headLineStyle3),
                        const Gap(5),
                        Text('Pesan Tiket', style: Styles.headLineStyle1),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/images/logo_home.png"),
                        ),
                      ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF4F6FD)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Styles.yellowColor),
                      Text('Cari', style: Styles.headLineStyle4)
                    ],
                  ),
                ),
                const Gap(40),
                AppDoubleTextWidget(
                    bigText: 'Penerbangan Mendatang', smallText: 'Lihat Semua')
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList
                  .map((singleTicket) => TicketView(ticket: singleTicket))
                  .toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AppDoubleTextWidget(bigText: 'Hotel', smallText: 'Lihat Semua')
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList
                  .map((singleHotel) => HotelScreen(hotels: singleHotel))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
