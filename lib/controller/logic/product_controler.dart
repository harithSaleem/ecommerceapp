import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:madetruky/model/productmodel.dart';
import 'package:madetruky/service/product_service.dart';

class Productcontroller extends GetxController {
  // ignore: non_constant_identifier_names
  var ProductList = <ProducteModels>[].obs;
  var Favoritelist = <ProducteModels>[].obs;
  var isloading = true.obs;
  var storge = GetStorage();
  // var isfavorit = false.obs;

  //search

  var searchlist = <ProducteModels>[].obs;
  TextEditingController searchTextController = TextEditingController();
  @override
  void onInit() {
    super.onInit();
    List? storedShoppings = storge.read<List>('isfavoritlist');
    if (storedShoppings != null) {
      Favoritelist =
          storedShoppings.map((e) => ProducteModels.fromJson(e)).toList().obs;
    }
    getproduct();
  }

  void getproduct() async {
    var products = await ProductService.getProduct();

    try {
      isloading(true);
      if (products.isNotEmpty) {
        ProductList.addAll(products);
      }
    } finally {
      isloading(false);
    }
  }

//logic for favorit screen
  // void addfavoriteitem() {
  //   isfavorit.value = !isfavorit.value;
  // }
  managefavorit(int productId) async {
    var exitIndex =
        Favoritelist.indexWhere((element) => element.id == productId);
    if (exitIndex >= 0) {
      Favoritelist.removeAt(exitIndex);
      await storge.remove('isfavoritlist');
    } else {
      Favoritelist.add(
          ProductList.firstWhere((element) => element.id == productId));
      await storge.write('isfavoritlist', Favoritelist);
    }
  }

  bool isFavorite(int productId) {
    return Favoritelist.any((element) => element.id == productId);
  }

//search bar logic
  void addSearchTolist(String searchName) {
    searchName = searchName.toLowerCase();

    searchlist.value = ProductList.where(
      (search) {
        var searchTitle = search.title.toLowerCase();
        return searchTitle.contains(searchName);
      },
    ).toList();
    update();
  }

  void clearSearch() {
    searchTextController.clear();
    addSearchTolist('');
  }
}
