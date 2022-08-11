import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:motocheck_limited_clone/custom%20widget/widget.dart';
import 'package:motocheck_limited_clone/style/style.dart';

class NavigatorDrawer extends StatelessWidget {
  const NavigatorDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kBackgroundColor,
      child: Padding(
        padding: kDefaultPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                space(40),
                Image.asset(
                  'assets/logo.png',
                  width: 160,
                ),
                space(40),
                menu(
                  'Overview',
                  FontAwesomeIcons.chartPie,
                  kBlackColor,
                  kSecondaryColor,
                ),
                space(20),
                const Divider(),
                space(20),
                menu(
                  'Inspection',
                  Icons.terminal,
                  kBlackColor,
                  kSecondaryColor,
                ),
                space(50),
                menu(
                  'Notifications',
                  Icons.notifications_rounded,
                  kBlackColor,
                  kSecondaryColor,
                ),
                space(50),
                menu(
                  'Maintenance',
                  FontAwesomeIcons.database,
                  kBlackColor,
                  kSecondaryColor,
                ),
                space(50),
                menu(
                  'Wallet',
                  FontAwesomeIcons.wallet,
                  kBlackColor,
                  kSecondaryColor,
                ),
                space(50),
                menu(
                  'Inspection',
                  FontAwesomeIcons.chartBar,
                  kBlackColor,
                  kSecondaryColor,
                ),
                space(50),
                menu(
                  'Logout',
                  FontAwesomeIcons.arrowRightFromBracket,
                  kGreyColor,
                  kGreyColor,
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/user.png',
                  width: 60,
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Faith Auto's",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Auto Centre",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: kGreyColor),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
