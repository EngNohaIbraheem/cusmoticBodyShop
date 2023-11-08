import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../contants.dart';
// class CustomTextFiald extends StatelessWidget {
//   const CustomTextFiald({
//     Key? key,
//     this.hintText = '',
//     this.lableText = '',
//     required this.keyboardType,
//     this.validator,
//     this.onSaved,
//     this.onsubmit,
//     this.hintStyle,
//     this.controller,
//     this.isEnabled = true,
//     this.readOnly = false,
//     this.change,
//     this.onTap,
//     this.isPassword = false,
//     this.backgroundColor = Colors.white,
//     this.suffixPress,
//     this.pIcon,
//     this.sIcon,
//     this.borderColor = Colors.grey,
//     this.isPrefex = false,
//     this.isValidation,
//     this.suffixColor = Colors.black, required String text,
//   }) : super(key: key);
//   final String hintText;
//   final TextInputType keyboardType;
//   final TextStyle? hintStyle;
//   final validator;
//   final onSaved;
//   final onsubmit;
//   final controller;
//   final bool isEnabled;
//   final bool readOnly;
//   final change;
//   final onTap;
//   final String lableText;
//   final bool isPassword;
//   final Color backgroundColor;
//   final suffixPress;
//   final pIcon;
//   final sIcon;
//   final borderColor;
//   final isPrefex;
//   final isValidation;
//   final Color suffixColor;
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       enabled: isEnabled,
//       readOnly: readOnly,
//       style: Theme.of(context).textTheme.bodyText1!.copyWith(
//         color: primaryColor,
//       ),
//       controller: controller,
//       validator: validator,
//       onSaved: onSaved,
//       onFieldSubmitted: onsubmit,
//       keyboardType: keyboardType,
//       cursorColor: primaryColor,
//       cursorWidth: 3,
//       obscureText: isPassword,
//       onChanged: change,
//       onTap: onTap,
//       decoration: InputDecoration(
//         hintText: hintText,
//         floatingLabelBehavior: FloatingLabelBehavior.never,
//         hintStyle: hintStyle,
//         labelText: lableText,
//         labelStyle: TextStyle(color: Colors.grey[500]),
//         suffixStyle: TextStyle(backgroundColor: Colors.grey[700]),
//         contentPadding: EdgeInsets.symmetric(vertical: 22.0, horizontal: 20),
//         filled: true,
//         fillColor: backgroundColor,
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(5.0),
//           borderSide: BorderSide(
//             color: borderColor,
//           ),
//         ),
//         border: OutlineInputBorder(
//           // borderRadius: BorderRadius.circular(5.0),
//           borderSide: BorderSide(
//             // color: SmartThemes.primaryColor,
//             // width: 2.0,
//           ),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderSide: BorderSide(
//             color: borderColor,
//           ),
//         ),
//         prefixIcon: isPrefex == true
//             ? Icon(
//           pIcon,
//           color: primaryColor,
//         )
//             : null,
//         suffixIcon: IconButton(
//           padding: EdgeInsets.zero,
//           icon: Icon(
//             sIcon,
//             color: suffixColor,
//           ),
//           onPressed: suffixPress,
//         ),
//       ),
//     );
//   }
// }
class CustomTextFiald extends StatelessWidget {

  const CustomTextFiald({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {

    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    var emailController = TextEditingController();

    var passwordController = TextEditingController();

    return TextFormField(
      // controller: controller,
      validator: (value) {
        if (value!.trim().isEmpty) {
          return "Please enter email";
        } //fsdjfdsfhsdkj
        final bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value);
        if (emailValid == false) {
          return "Please enter valid email";
        }

        return null;
      },
      // // controller: emailController,
      // keyboardType: TextInputType.emailAddress,
      // textInputAction: TextInputAction.next,
      // validator: (value) {
      //   if (value?.trim() == "") {
      //     return "Please enter email";
      //   }
      //   return null;
      // },
      cursorColor: primaryColor,

      obscureText: text == "Password" ? true : false,
      decoration: InputDecoration(
        hintText: text,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: primaryColor)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: primaryColor)),

      ),
    );
  }
}
