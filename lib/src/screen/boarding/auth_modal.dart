import 'dart:async';

import 'package:flutter/material.dart';
import 'package:southpaw/src/core/app_constant.dart';
import 'package:southpaw/src/widget/custom_btn.dart';
import 'package:southpaw/src/widget/custom_input.dart';

class AuthModal extends StatefulWidget {
  const AuthModal({Key? key}) : super(key: key); // Fix the key parameter syntax

  @override
  State<AuthModal> createState() => _AuthModalState();
}

class _AuthModalState extends State<AuthModal> {
  final TextEditingController _emailController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }
   bool _switch = false,_redirecting = false;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: AnimatedContainer(
        padding: const EdgeInsets.all(20),
        duration: const Duration(milliseconds: 200),
        width: _switch ? 100 : double.infinity * 0.95,
        height: _switch ? 100 : 500, // Remove the unnecessary _switch variable and use a fixed height
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          child:_switch ?  const CircularProgressIndicator()  : Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.key_rounded,
                    size: 32,
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.cancel),
                    iconSize: 30,
                  ),
                ],
              ),
              const Text(
                  "Sign in via Magic Link with your email or continue with your various account."),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Input(textController: _emailController),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 18.0),
                child: Btn(
                  text: "Send MagicLink",
                  color: Color(0xFF4431F5),
                  textColor: Colors.white,
                  height: 50,
                  width: 300,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    Expanded(child: Divider(color: Colors.black)),
                    Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Text('OR'),
                    ),
                    Expanded(child: Divider(color: Colors.black))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      iconSize: 50,
                      onPressed: () async{
                      // setState(() => _switch = true);
                      Navigator.of(context).pushReplacementNamed(AppUtil.home
                      );
                    },
                    icon: const Icon(Icons.facebook_outlined),
                  ),
                  IconButton(
                    iconSize: 50,
                    onPressed: () {},
                    icon: const Icon(Icons.facebook),
                  ),
                  IconButton(
                    iconSize: 50,
                    onPressed: () {},
                    icon: const Icon(Icons.facebook),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


