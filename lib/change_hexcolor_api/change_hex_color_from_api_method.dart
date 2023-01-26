import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:widget_function/change_hexcolor_api/color_model.dart';

class ChangeColorView extends StatefulWidget {
  const ChangeColorView({super.key});

  @override
  State<ChangeColorView> createState() => _ChangeColorViewState();
}

class _ChangeColorViewState extends ChangeLoadingValue<ChangeColorView> {
  Dio dio = Dio();
  List<Data>? items;
  @override
  void initState() {
    super.initState();
    fetchColorFromApi();
  }

  Future<List<Data>?> fetchColorFromApi() async {
    changeLoading();
    final response = await dio.get('https://reqres.in/api/unknown');
    if (response.statusCode == 200) {
      final value = ColorModel.fromJson(response.data);
      items = value.data;
    }
    changeLoading();
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: items?.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Color(items?[index].changeColorValue ?? 0),
            child: Text(items?[index].name ?? ''),
          );
        },
      ),
    );
  }
}

abstract class ChangeLoadingValue<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;
  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
