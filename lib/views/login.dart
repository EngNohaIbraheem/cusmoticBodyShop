import 'package:bodyshop/views/register/cubit/cubit.dart';
import 'package:bodyshop/views/register/cubit/states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../components/custom_text_field.dart';
import '../../contants.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _RegisterationState();
}

class _RegisterationState extends State<Login> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/big_sale.jpg",
                width: 170,
              ),
              const Text(
                "Welcome",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const CustomTextFiald(
                text: "Email",
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomTextFiald(text: "password"),
              ElevatedButton(
                onPressed: () {
                  context.pushReplacement(home);
                },
                style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
                child: const Text("Enter"),
              )
            ],
          ),
        ),
      ),
    );
    //
    //       },
    //     ),
    //   );
  }

  void ValidateForm() async {
    if (formKey.currentState!.validate()) {
      try {
        final credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    }
  }
}
