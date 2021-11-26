import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instax/common/models/instax_camera.dart';

class InstaxListProvider extends ChangeNotifier {
  // list original
  final List<InstaxCamera> cameraList;

  // list data hasil pencarian
  List<InstaxCamera> _searchCameraResult = [];
  List<InstaxCamera> get searchCameraResult => _searchCameraResult;
  set searchCameraResult(List<InstaxCamera> newValue) {
    _searchCameraResult = newValue;
    notifyListeners();
  }

  InstaxListProvider(this.cameraList) {
    _searchController.addListener(() {
      if (_searchController.text.isNotEmpty) {
        isSearching = true;
      }
    });
  }

  // text editing controller untuk mendeteksi pencarian text oleh user
  TextEditingController _searchController = TextEditingController();
  TextEditingController get searchController => _searchController;
  set searchController(TextEditingController newValue) {
    _searchController = newValue;
    notifyListeners();
  }

  // is searching untuk pengecekan apakah state saat ini user sedang melakukan pencarian
  bool _isSearching = false;
  bool get isSearching => _isSearching;
  set isSearching(bool newValue) {
    _isSearching = newValue;
    notifyListeners();
  }

  void doSearch(String searchText) {
    searchCameraResult.clear();
    if (searchText.isEmpty) {
      searchCameraResult.clear();
      isSearching = false;
    } else {
      isSearching = true;
      searchCameraResult = cameraList.where((camera) => camera.title.toLowerCase().contains(searchText.toLowerCase())).toList();
    }
  }

}