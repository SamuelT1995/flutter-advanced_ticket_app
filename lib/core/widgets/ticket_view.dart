import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_styles.dart';
import 'package:ticket_app/core/widgets/app_column_text_layout.dart';
import 'package:ticket_app/core/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/core/widgets/big_circle.dart';
import 'package:ticket_app/core/widgets/big_dot.dart';
import 'package:ticket_app/core/widgets/text_style_fourth.dart';
import 'package:ticket_app/core/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //Blue Part of the container
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),

              child: Column(
                children: [
                  //show departure and destination with icons
                  Row(
                    children: [
                      TextStyleThird(text: "NYC"),

                      Expanded(child: Container()),
                      BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutbuilderWidget(randomDivider: 6),
                            ),
                            Transform.rotate(
                              angle: 1.57,
                              child: Center(
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      BigDot(),
                      Expanded(child: Container()),
                      TextStyleThird(text: "LDN"),
                    ],
                  ),
                  //show departure and destination with line
                  SizedBox(height: 3),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: "NEW YORK"),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(text: "08 30 AM"),

                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,

                        child: TextStyleFourth(
                          text: "LONDON",
                          align: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Circles and dots
            Container(
              color: AppStyles.ticketOrange,
              child: Row(
                children: [
                  BigCircle(isRight: false),
                  Expanded(
                    child: AppLayoutbuilderWidget(randomDivider: 20, width: 6),
                  ),
                  BigCircle(isRight: true),
                ],
              ),
            ),
            //Orange ticket container
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),

              child: Column(
                children: [
                  //show departure and destination with icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText: "1 MAY",
                        bottomText: "DATE",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnTextLayout(
                        topText: "08 00 AM",
                        bottomText: "DEPARTURE TIME",
                        alignment: CrossAxisAlignment.center,
                      ),
                      AppColumnTextLayout(
                        topText: "23",
                        bottomText: "NUMBER",
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
