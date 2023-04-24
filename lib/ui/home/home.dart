import 'package:flutter/material.dart';
import 'package:leejungsoo/provider/bottom_navigation_provider.dart';
import 'package:leejungsoo/provider/firebase_provider.dart';
import 'package:leejungsoo/ui/home/screens/classnote_screen.dart';
import 'package:leejungsoo/ui/home/screens/notification_screen.dart';
import 'package:leejungsoo/ui/home/screens/onandoff_screen.dart';
import 'package:leejungsoo/ui/home/screens/overview_screen.dart';
import 'package:leejungsoo/ui/home/screens/settings_screen.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  late BottomNavigationProvider _bottomNavigationProvider;

  Home({super.key});

  Widget _navigationBody() {
    switch (_bottomNavigationProvider.currentPage) {
      case 0:
        return OverviewScreen();

      case 1:
        return const OnandoffScreen();

      case 2:
        return const ClassnoteScreen();

      case 3:
        return const NotificationScreen();

      case 4:
        return const SettingsScreen();
    }
    return Container();
  }

  Widget _bottomNavigationBarWidget() {
    return ChangeNotifierProvider(
      create: (_) => FirebaseProvider(),
      child: Container(
        decoration: const BoxDecoration(color: Color.fromARGB(255, 114, 86, 0)),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.people), label: "등하원"),
              BottomNavigationBarItem(icon: Icon(Icons.note), label: "수업내용"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: "알림"),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: "설정")
            ],
            currentIndex: _bottomNavigationProvider.currentPage,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blue,
            backgroundColor: Colors.amber,
            onTap: (index) {
              _bottomNavigationProvider.updateCurrentPage(index);
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _bottomNavigationProvider = Provider.of<BottomNavigationProvider>(context);

    return Scaffold(
      body: _navigationBody(),
      bottomNavigationBar: _bottomNavigationBarWidget(),
    );
  }
}
