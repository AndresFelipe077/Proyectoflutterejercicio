import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  int currentPage = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.black12,
          title: Text('FELPIL GAMES STUDIO $currentPage'),
          elevation: 10,
        ),








        body: PageView(
          children: [
            CustomScreen(color: Colors.black26),
            CustomScreen(color: Colors.white10)
          ],
        ),





        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (index) => {
            currentPage = index;

            setState(() {});

          },
          backgroundColor: Colors.blueAccent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.5),
          items: const [
            BottomNavigationBarItem(
              icon: Icon( Icons.verified_user_outlined ),
              label: 'User'
            ),
            BottomNavigationBarItem(
              icon: Icon( Icons.settings ),
              label: 'Settings'
            ),
          ],
        ),
      );
  }
}


class CustomScreen extends StatelessWidget {

  final Color color;

  const CustomScreen({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text('Mamadisimo!!!'),
      ),
    );
  }

}