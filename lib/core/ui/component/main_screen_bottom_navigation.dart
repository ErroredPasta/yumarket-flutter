import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScreenBottomNavigation extends StatelessWidget {
  final int currentIndex;

  const MainScreenBottomNavigation({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    final idleColor = Theme.of(context).colorScheme.outline;

    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/order_list_icon.png',
            color: currentIndex == 0 ? primaryColor : idleColor,
            scale: 1.5,
          ),
          label: '주문 목록',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Image.asset(
              'assets/chatting_icon.png',
              color: currentIndex == 1 ? primaryColor : idleColor,
              scale: 1.5,
            ),
          ),
          label: '리뷰 관리',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/review_manage_icon.png',
            color: currentIndex == 2 ? primaryColor : idleColor,
            scale: 1.5,
          ),
          label: '상품 관리',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/market_manage_icon.png',
            color: currentIndex == 3 ? primaryColor : idleColor,
            scale: 1.5,
          ),
          label: '마켓 관리',
        ),
      ],
      onTap: (value) {
        if (value == currentIndex) return;

        switch(value) {
          case 0: context.push('/orders');
          case 1: context.push('/reviews');
          case 2: context.push('/items');
          case 3: context.push('/manage');
        }
      },
      selectedItemColor: primaryColor,
      unselectedItemColor: idleColor,
      showUnselectedLabels: true,

    );
  }
}
