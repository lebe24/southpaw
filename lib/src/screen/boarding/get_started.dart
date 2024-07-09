import 'package:flutter/material.dart';
import 'package:southpaw/src/screen/boarding/auth_modal.dart';
import 'package:southpaw/src/widget/custom_btn.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFF233035),
      body: Stack(
        children: [
          Image.asset(
            'assets/img/model.png',
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fitHeight,
          ),
          Padding(
            padding: const EdgeInsets.all(58.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 const Text(
                  'Southpaw AI',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(88, 255, 255, 255),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  )
                 ),
                Padding(
            padding: const EdgeInsets.only(top:38.0),
            child: Btn(
              height: 50,
              width: 300,
              text: "Get Started",
              color: const Color(0xFF4431F5),
              textColor: Colors.white,
              function:()=>showModalBottomSheet<void>(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  useSafeArea: true,
                  context: context,
                  builder: (BuildContext context) =>   const AuthModal()
              )
            )
          ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}