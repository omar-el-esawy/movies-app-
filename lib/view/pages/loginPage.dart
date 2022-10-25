import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iv/view/componant/inputfrom.dart';
import 'package:iv/view/pages/firstpage.dart';
import 'package:iv/view_model/login/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../componant/logo.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.black,
            body: Container(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 100),
                    logo(20),
                    SizedBox(height: 50),
                    Text(
                      "Login",
                      style: GoogleFonts.salsa(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 50),
                          formInput(LoginCubit.get(context).email, "E-Mail"),
                          SizedBox(height: 60),
                          formInput(
                              LoginCubit.get(context).passwrod, "Password"),
                          SizedBox(height: 10),
                          Text(
                            "Forgot Password?",
                            style: GoogleFonts.roboto(
                                color: Colors.red, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    TextButton(
                      onPressed: () => LoginCubit.get(context).logIn(context),
                      child: Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )),
                    ),
                    SizedBox(height: 30),
                    RichText(
                      text: TextSpan(
                          text: "Don\'t have an account?",
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontSize: 15),
                          children: [
                            TextSpan(
                                text: 'Signup',
                                style: GoogleFonts.roboto(color: Colors.red)),
                          ]),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(height: 1, width: 110, color: Colors.white),
                        SizedBox(width: 20),
                        Text("or connect with",
                            style: GoogleFonts.roboto(
                                color: Colors.white, fontSize: 15)),
                        SizedBox(width: 20),
                        Container(height: 1, width: 110, color: Colors.white)
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/Vector.svg'),
                        SizedBox(width: 20),
                        SvgPicture.asset('assets/images/Vector (1).svg'),
                        SizedBox(width: 20),
                        SvgPicture.asset('assets/images/Vector (2).svg'),
                      ],
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ));
                      },
                      child: Text(
                        'Enter as a guest',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
