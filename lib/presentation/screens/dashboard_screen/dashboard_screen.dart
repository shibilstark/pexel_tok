import 'package:flutter/material.dart';
import 'package:pexel_tok/config/style/colors.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Hero(tag: "to_dahsbord_appbar", child: Text("App Name")),
        automaticallyImplyLeading: false,
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.theme,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: AppColors.black,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: AppColors.black,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: AppColors.black,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: AppColors.black,
              ),
              label: "Home"),
        ],
      ),
    );
  }
}
