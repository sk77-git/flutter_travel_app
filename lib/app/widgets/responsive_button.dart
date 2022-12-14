import 'package:flutter/material.dart';
import 'package:getx_ecommerce/app/constants/constants.dart';

class ResponsiveButton extends StatelessWidget {
  String? text;
  bool? isResponsive;
  Icon? icon;

  ResponsiveButton({
    Key? key,
    this.text,
    this.isResponsive,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
          color: AppColors.mainColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          const Text(
            "",
            style: TextStyle(color: Colors.white),
          ),
          Image.asset("assets/button-one.png"),
        ],
      ),
    );
  }
}
