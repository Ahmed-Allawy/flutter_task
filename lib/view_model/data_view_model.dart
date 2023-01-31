// ignore_for_file: unused_field, recursive_getters

import 'package:tast/models/api_data_model.dart';
import 'package:tast/services/api.dart';

class DataView {
  Data? _data;

  fetchData() async {
    _data = await Api().fetchUrl();
  }

  Data get data => data;
}
