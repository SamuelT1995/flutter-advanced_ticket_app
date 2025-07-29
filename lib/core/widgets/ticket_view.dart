import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/app_styles.dart';
import 'package:ticket_app/core/utils/all_json.dart';
import 'package:ticket_app/core/widgets/app_column_text_layout.dart';
import 'package:ticket_app/core/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/core/widgets/big_circle.dart';
import 'package:ticket_app/core/widgets/big_dot.dart';
import 'package:ticket_app/core/widgets/text_style_fourth.dart';
import 'package:ticket_app/core/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final bool wholeScreen;
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket, this.wholeScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
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
                      TextStyleThird(text: ticket["from"]["code"]),

                      Expanded(child: Container()),
                      BigDot(),
                      //ticket icon
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
                      TextStyleThird(text: ticket["to"]["code"]),
                    ],
                  ),
                  //show departure and destination with line
                  SizedBox(height: 3),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: ticket["from"]["name"]),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(text: ticket["flying_time"]),

                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,

                        child: TextStyleFourth(
                          text: ticket["to"]["name"],
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
                        topText: ticket["date"],
                        bottomText: "DATE",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnTextLayout(
                        topText: ticket["departure_time"],
                        bottomText: "DEPARTURE TIME",
                        alignment: CrossAxisAlignment.center,
                      ),
                      AppColumnTextLayout(
                        topText: ticket["number"].toString(),
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
