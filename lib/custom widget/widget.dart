import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../style/style.dart';

containStatus(String status, Color textColor, Color bgColor) {
  return Container(
    width: double.infinity,
    height: 135,
    padding: kDefaultPadding,
    decoration: BoxDecoration(
        color: kWhiteColor, borderRadius: BorderRadius.circular(10)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Mr. Joseph Agunbiade',
              style: TextStyle(fontSize: 20),
            ),
            Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: bgColor, borderRadius: BorderRadius.circular(5)),
                child: Text(
                  status,
                  style: TextStyle(color: textColor),
                ))
          ],
        ),
        const Text(
          'Benz 2014 EClass',
          style: TextStyle(fontSize: 13, color: kGreyColor),
        ),
        sizeBoxhe10(),
        const Divider(),
        sizeBoxhe10(),
        Row(
          children: const [
            Icon(
              FontAwesomeIcons.clock,
              size: 15,
              color: kGreyColor,
            ),
            SizedBox(
              width: 10,
            ),
            Text('14 July, 4:00pm - 7:00pm'),
          ],
        )
      ],
    ),
  );
}

sizeBoxhe10() => const SizedBox(
      height: 10,
    );

OutlineInputBorder borderCustom() {
  return OutlineInputBorder(
      borderSide: const BorderSide(color: kWhiteColor),
      borderRadius: BorderRadius.circular(5));
}

headerSub(String title) {
  return Text(
    title,
    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
  );
}

SizedBox space(double lenght) => SizedBox(height: lenght);
Container compotwo(String title, String subtitle, String dirImage) {
    return Container(
      height: 130,
      width: double.infinity,
      padding: kDefaultPadding,
      decoration: BoxDecoration(
          color: kWhiteColor, borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: kSecondaryColor, width: 1.0)),
                  child: Image.asset(dirImage)),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: kGreyColor,
                ),
              )
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          const Center(
            child: Icon(
              FontAwesomeIcons.arrowRight,
              color: kGreyColor,
            ),
          )
        ],
      ),
    );
  }
  inputCustom() {
    return InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                fillColor: kWhiteColor,
                filled: true,
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                hintText: 'Search lorem ipsum',
                border: borderCustom(),
                enabledBorder: borderCustom(),
                focusedBorder: borderCustom(),
              );
  }
   Row menu(String title, IconData icon, Color textColor, Color iconColor) {
    return Row(
      children: [
        Icon(
          icon,
          size: 22,
          color: iconColor,
        ),
        const SizedBox(width: 20),
        Text(
          title,
          style: TextStyle(
              fontSize: 18, color: textColor, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
