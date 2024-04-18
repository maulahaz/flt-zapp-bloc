import 'package:flutter/material.dart';

import '../configs/x_configs.dart';
import 'x_widgets.dart';

class MyTextField {
  //------------------------------------------------------------------
  static Widget round(
    String title, {
    String? label,
    TextEditingController? controller,
    bool obscureText = false,
    bool readOnly = false,
    Function(String value)? onChanged,
    double height = 50,
    double width = double.infinity,
    String? hintText,
    bool isBordered = false,
    IconData? icon,
    Widget? suffixIcon,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          SizedBox(
            width: width,
            height: height,
            child: TextFormField(
              controller: controller,
              readOnly: readOnly,
              onChanged: onChanged,
              obscureText: obscureText,
              maxLines: 1,
              decoration: InputDecoration(
                prefixIcon: (icon != null) ? Icon(icon) : null,
                suffixIcon: suffixIcon,
                hintText: hintText,
                filled: true,
                fillColor: (!readOnly)
                    ? cGrey.withOpacity(0.2)
                    : cGrey.withOpacity(0.5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: cTransparent, width: 0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: cPrimer, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: (isBordered)
                      ? const BorderSide(color: cPrimer, width: 1)
                      : const BorderSide(color: cTransparent),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //------------------------------------------------------------------
  static Widget roundBorder(
    String label, {
    required TextEditingController controller,
  }) {
    return round(label, controller: controller, isBordered: true);
  }

  //------------------------------------------------------------------
  static Widget roundIcon(
    String label,
    IconData iconName, {
    required TextEditingController controller,
    Function(String value)? onChanged,
  }) {
    return round(label, controller: controller, icon: iconName);
  }

  //------------------------------------------------------------------
  static Widget roundDisable(
    String label, {
    required TextEditingController controller,
  }) {
    return round(
      label,
      controller: controller,
      readOnly: true,
    );
  }

  //------------------------------------------------------------------
  static Widget roundWidget(
    String label, {
    required TextEditingController controller,
    required Widget iconWidget,
    String hintText = '',
  }) {
    return round(label,
        controller: controller, suffixIcon: iconWidget, hintText: hintText);
  }

  static Widget round2(
    String label, {
    required TextEditingController controller,
    bool obscureText = false,
    Function(String value)? onChanged,
  }) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      height: 60.0,
      decoration:
          appBoxDecorationTextField(borderColor: cPrimer.withOpacity(0.4)),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 7, left: 10),
          labelText: label,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: cRed), //BorderSide.none,
          ),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(12),
          //   borderSide: BorderSide(color: cRed), //BorderSide.none,
          // ),
          focusedBorder:
              const OutlineInputBorder(borderSide: BorderSide(color: cPrimer)),
        ),
      ),
    );
  }

  static Widget round3(
    // BuildContext context,
    String label, {
    double width = double.infinity,
    double height = 50,
    String hintText = "Type in your info",
    required TextEditingController controller,
    bool obscureText = false,
    bool readOnly = false,
    Function(String value)? onChanged,
  }) {
    return SizedBox(
      width: width,
      height: height,
      child: TextFormField(
        controller: controller,
        onChanged: (value) => onChanged!(value),
        keyboardType: TextInputType.multiline,
        readOnly: readOnly,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 7, left: 10),
          hintText: hintText,
          // filled: true,
          // fillColor: cRed,
          // focusColor: cYellow,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: cRed,
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          // border: const OutlineInputBorder(
          // borderRadius: BorderRadius.circular(10),
          // borderSide: BorderSide(color: cRed)),
          //--enabledBorder: default border without any input
          enabledBorder:
              const OutlineInputBorder(borderSide: BorderSide(color: cGrey)),
          //--focused border is with input typing
          focusedBorder:
              const OutlineInputBorder(borderSide: BorderSide(color: cPrimer)),
          disabledBorder:
              const OutlineInputBorder(borderSide: BorderSide(color: cGrey)),
        ),
        maxLines: 1,
        autocorrect: false,
        obscureText: obscureText,
      ),
    );
  }

  static Widget roundIconX(
    // BuildContext context,
    String label,
    String iconName, {
    required TextEditingController controller,
    Function(String value)? onChanged,
  }) {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text14Normal(text: label),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 325,
            height: 50,
            decoration: appBoxDecorationTextField(),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 17),
                  child: Image.asset(iconName),
                ),
                round(
                  label,
                  controller: controller,
                  onChanged: onChanged,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  static Widget square(
    String title, {
    String? label,
    required TextEditingController controller,
    bool obscureText = false,
    bool readOnly = false,
    Function(String value)? onChanged,
    double height = 50,
    double width = double.infinity,
    String hintText = "Type in your info",
    bool isBordered = false,
    IconData? icon,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          SizedBox(
            width: width,
            height: height,
            child: TextFormField(
              controller: controller,
              readOnly: readOnly,
              onChanged: onChanged,
              obscureText: obscureText,
              maxLines: 1,
              decoration: InputDecoration(
                prefixIcon: (icon != null) ? Icon(icon) : null,
                hintText: hintText,
                filled: true,
                fillColor: (!readOnly)
                    ? cGrey.withOpacity(0.2)
                    : cGrey.withOpacity(0.5),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: cTransparent, width: 0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: cPrimer, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: (isBordered)
                      ? const BorderSide(color: cPrimer, width: 1)
                      : const BorderSide(color: cTransparent),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}