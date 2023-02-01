// ignore_for_file: unused_field, recursive_getters

import 'package:flutter/material.dart';
import 'package:tast/models/api_data_model.dart';
import 'package:tast/services/api.dart';

class DataView extends ChangeNotifier {
  Data? _data;
  fetchData() async {
    _data = await Api().fetchUrl();
    notifyListeners();
    return null;
  }

  Data getData() {
    return _data!;
  }
}
