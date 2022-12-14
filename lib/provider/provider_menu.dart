import 'package:flutter/material.dart';
import 'package:myTestApp_Test/model/dummy/dummy_detail_menu.dart';
import 'package:myTestApp_Test/model/model_menu.dart';
import 'package:myTestApp_Test/model/dummy/dummy_menu.dart';
import 'package:myTestApp_Test/shared/helpers/functions.dart';

class ProviderMenu extends ChangeNotifier {
  MenuModel category;
  MenuModel menuDetail =
      MenuModel(id: '', image: '', menuTitle: '', childList: []);
  MenuModel specialMenu;
  int sum = 0;

  List<MenuModel> _addCartItems = [];
  List<MenuModel> _addOrderedItems = [];
  List<MenuModel> _addSpecialItems = [];
  // List<MenuModel> _menuItems = DUMMY_CATEGORY.toList();
  List<MenuModel> _menuItems = DUMMY_CATEGORY.toList();
  List<MenuModel> _menuSpecialItems = DUMMY_SPECIAL.toList();
  // List<MenuModel> _menuItems = DUMMY_MENU.toList();

  List<MenuModel> get menuList => [..._menuItems];
  List<MenuModel> get specialMenuList => [..._menuSpecialItems];
  List<MenuModel> get cartList => [..._addCartItems];
  List<MenuModel> get orderList => [..._addOrderedItems];
  // List<MenuModel> get specialList => [..._addSpecialItems];

  MenuModel get selectedMenu =>
      menuDetail != null ? MenuModel.fromMenuModelInfo(selectedMenu) : '';
  // MenuModel get selectedSpecialMenu => specialMenu != null ? MenuModel.fromMenuModelInfo(selectedSpecialMenu) : null;
  MenuModel get selectedCategory =>
      category != null ? MenuModel.fromMenuModelInfo(category) : '';
  int get totalPrices =>
      cartList.fold(0, (sum, current) => sum + current.prices);

  void selectMenu(MenuModel menuContent) {
    menuDetail = menuContent;
    notifyListeners();
  }

  void selectCategory(MenuModel categoryContent) {
    category = categoryContent;
    notifyListeners();
  }

  // void selectSpecialMenu(MenuModel specialContent){
  //   specialMenu = specialContent;
  //   notifyListeners();
  // }

  // Add new elements.
  void addMenu(MenuModel menuAdd) {
    _addCartItems.add(menuAdd);
    notifyListeners();
  }

  void addOrder(MenuModel menuOrderAdd) {
    _addOrderedItems.add(menuOrderAdd);
    notifyListeners();
  }

  // void addSpecialMenu(MenuModel menuSpecialAdd){
  //   _addSpecialItems.add(menuSpecialAdd);
  //   notifyListeners();
  // }

  // void createMenu(MenuModel menuCreate){
  //   menuCreate.id = getRandomString(2);
  //   final MenuModel menuAttribute = MenuModel.fromMenuModelInfo(menuCreate);
  //   _menuItems.add(menuAttribute);
  //   notifyListeners();
  // }

  void createMenu(Map<String, dynamic> menuCreate) {
    menuCreate['id'] = getRandomString(2);
    final MenuModel menuSettings = MenuModel.fromMenuModelMapInfo(menuCreate);
    // _menuItems.add(menuSettings);
    _menuSpecialItems.add(menuSettings);
    notifyListeners();
  }

  void deleteOrderMenu(MenuModel menuDelete) {
    _addCartItems.remove(menuDelete);
    notifyListeners();
  }
}
