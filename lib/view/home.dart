import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:motocheck_limited_clone/custom%20widget/drawer.dart';

import 'package:motocheck_limited_clone/style/style.dart';

import '../custom widget/widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      drawer: const NavigatorDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: kDefaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              space(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => key.currentState!.openDrawer(),
                    child: const Icon(
                      FontAwesomeIcons.alignLeft,
                      color: kSecondaryColor,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: kWhiteColor,
                        boxShadow: [
                          BoxShadow(
                              color: kBlackColor.withOpacity(0.1),
                              blurRadius: (9),
                              spreadRadius: 2,
                              offset: const Offset(1, 5)),
                        ],
                        borderRadius: BorderRadius.circular(5)),
                    child: const Icon(
                      FontAwesomeIcons.user,
                      size: 20,
                    ),
                  ),
                ],
              ),
              space(20),
              const Text(
                'Welcome Back, Imani 👋🏽 ',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  wordSpacing: 2.0,
                ),
              ),
              space(10),
              const Text(
                'It is a long established fact lorem.',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
              space(10),
              TextFormField(
                decoration: inputCustom(),
              ),
              space(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  headerSub('Recent Checklist'),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'View all',
                        style: TextStyle(color: kSecondaryColor, fontSize: 18),
                      )),
                ],
              ),
              containStatus('Pending', kRedColor, kRedColor.withOpacity(0.1)),
              space(20),
              containStatus('Ready', kGreenColor, kGreenColor.withOpacity(0.1)),
              space(30),
              headerSub('Services'),
              space(20),
              compotwo(
                  'Inspection',
                  'Contrary to popular belief, Lorem Ipsum dior,',
                  'assets/hands.png'),
              space(20),
              compotwo(
                  'Inspection',
                  'Contrary to popular belief, Lorem Ipsum dior,',
                  'assets/main.png'),
            ],
          ),
        ),
      ),
    );
  }
}
