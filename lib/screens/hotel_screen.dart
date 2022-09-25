import 'package:book_your_tickets/utils/app_layout.dart';
import 'package:book_your_tickets/utils/app_styles.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Hotel price is ${hotel["price"]}");
    final size = AppLayout.getSize(context);
    return Container(
        width: size.width * 0.6,
        height: 350,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
        margin: const EdgeInsets.only(right: 17, top: 5),
        decoration: BoxDecoration(
          color: const Color(0xFF526799),
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 10),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF0288D1),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}"),
                  )),
            ),
            const SizedBox(height: 15),
            Text(
              hotel['place'],
              style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor),
            ),
            const SizedBox(height: 5),
            Text(
              hotel['destination'],
              style: Styles.headlineStyle3.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 5),
            Text(
              '\$${hotel['price']}/night',
              style: Styles.headlineStyle1.copyWith(
                color: Styles.kakiColor,
              ),
            )
          ],
        ));
  }
}
