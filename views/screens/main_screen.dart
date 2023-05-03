import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:gospelai_multi_web_admin/views/screens/side_bar_screens/categories_screen.dart';
import 'package:gospelai_multi_web_admin/views/screens/side_bar_screens/dashboard_screen.dart';
import 'package:gospelai_multi_web_admin/views/screens/side_bar_screens/orders_screen.dart';
import 'package:gospelai_multi_web_admin/views/screens/side_bar_screens/products_screen.dart';
import 'package:gospelai_multi_web_admin/views/screens/side_bar_screens/upload_banner_screen.dart';
import 'package:gospelai_multi_web_admin/views/screens/side_bar_screens/vendors_screen.dart';
import 'package:gospelai_multi_web_admin/views/screens/side_bar_screens/withdrawal_screen.dart';

class MainScreen extends StatefulWidget {
  static const String id = '\MainScreen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _selectedItem = DashboardScreen();

  ScreenSlector(item) {
    switch (item.route) {
      case DashboardScreen.id:
        setState(() {
          _selectedItem = DashboardScreen();
        });
        break;

      case VendorsScreen.id:
        setState(() {
          _selectedItem = VendorsScreen();
        });
        break;
      case WithdrawalScreen.id:
        setState(() {
          _selectedItem = WithdrawalScreen();
        });
        break;

      case OrderScreen.routeName:
        setState(() {
          _selectedItem = OrderScreen();
        });
        break;
      case CategoriesScreen.routeName:
        setState(() {
          _selectedItem = CategoriesScreen();
        });
        break;
      case ProductScreen.routeName:
        setState(() {
          _selectedItem = ProductScreen();
        });
        break;
      case UploadBannerScreen.routeName:
        setState(() {
          _selectedItem = UploadBannerScreen();
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text(
            'Management',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        sideBar: SideBar(
          items: const [
            AdminMenuItem(
              title: 'Vendors',
              icon: CupertinoIcons.person_3,
              route: VendorsScreen.id,
            ),
            AdminMenuItem(
              title: 'Withdrawal',
              icon: CupertinoIcons.money_dollar,
              route: WithdrawalScreen.id,
            ),
            AdminMenuItem(
              title: 'Orders',
              icon: CupertinoIcons.shopping_cart,
              route: OrderScreen.routeName,
            ),
            AdminMenuItem(
              title: 'Categories',
              icon: Icons.category_rounded,
              route: CategoriesScreen.routeName,
            ),
            AdminMenuItem(
              title: 'Upload Banner',
              icon: CupertinoIcons.add,
              route: UploadBannerScreen.routeName,
            ),
            AdminMenuItem(
              title: 'Products',
              icon: Icons.shop,
              route: ProductScreen.routeName,
            ),
          ],
          selectedRoute: VendorsScreen.id,
          onSelected: (item) {
            ScreenSlector(item);
          },
          header: Container(
            height: 50,
            width: double.infinity,
            color: Colors.blueAccent,
            child: const Center(
              child: Text(
                'GospelAI Store Admin',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          footer: Container(
            height: 50,
            width: double.infinity,
            color: const Color(0xff444444),
            child: const Center(
              child: Text(
                'Gospel AI',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        body: _selectedItem);
  }
}
