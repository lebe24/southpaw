import 'dart:ui';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isExpanded = true;  

  List<Widget> page = <Widget>[Center(child: const Text("Training")),Center(child: const Text("Meal")),Center(child: Text("Chart"))];
  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 50,
            // backgroundImage: AssetImage("assets/images/profile.jpg"),  // Uncomment this line if image exists
          ),
        ),
        
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: onTap,
            backgroundColor: Colors.white.withOpacity(0.1),
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: const Color(0xFF4431F5),
            unselectedItemColor: Colors.grey.shade500,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.fitness_center),
                label: "Training",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: "Meal Plan",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_chart),
                label: "Chart",
              ),
            ],
          ),
        ),
      ),
      body: page[currentIndex],
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.chat),
        onPressed: (){
        showModalBottomSheet<void>(
           isScrollControlled: true,
                backgroundColor: Colors.transparent,
                useSafeArea: true,
                context: context,
          builder: (BuildContext context) =>   Container(
            width:  double.infinity * 0.95,
      height:  600,
            decoration: BoxDecoration(
              
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
            child: const Center(child: Text("hello"),))
        );
        setState(() {
          _isExpanded = !_isExpanded;
        });
      }),
    );
  }
}
