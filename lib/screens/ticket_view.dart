import 'package:flutter/material.dart';
import 'package:flutter_master_tutorial/utils/app_layout.dart';
import 'package:flutter_master_tutorial/utils/app_styles.dart';
import 'package:flutter_master_tutorial/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xDD526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Soekarno-Hatta",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(
                        child: SizedBox(
                          height: 24,
                          child: LayoutBuilder(
                            builder: ((context, constraints) {
                              // print('width : ${constraints.constrainWidth()}');
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                  (constraints.constrainWidth() / 6).floor(),
                                  (index) => const SizedBox(
                                    width: 3,
                                    height: 1,
                                    child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                      Transform.rotate(
                          angle: 1.54,
                          child: const Icon(Icons.local_airport_rounded,
                              color: Colors.white)),
                      ThickContainer(),
                      Expanded(child: Container()),
                      Text("Ngurah Rai",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
