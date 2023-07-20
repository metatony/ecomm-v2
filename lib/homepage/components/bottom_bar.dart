import 'package:ecommerce_app/utils/exports.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomBar[selectedIndex]['body'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: List.generate(
          bottomBar.length,
          (index) => BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: Icon(
                bottomBar[index]['icon'],
              ),
            ),
            label: bottomBar[index]['page'],
          ),
        ),
      ),
    );
  }
}
