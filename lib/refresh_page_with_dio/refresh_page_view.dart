import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:widget_function/refresh_page_with_dio/refresh_model.dart';

class RefreshPageView extends StatefulWidget {
  const RefreshPageView({Key? key}) : super(key: key);

  @override
  State<RefreshPageView> createState() => _RefreshPageViewState();
}

class _RefreshPageViewState extends ProjectLoading<RefreshPageView> {
  Dio dio = Dio(BaseOptions(baseUrl: 'http://localhost:3000/'));
  List<RefreshModel>? items;
  @override
  void initState() {
    setState(() {
      super.initState();
      fetchItemFromLocalHost();
      WidgetsBinding.instance.addPostFrameCallback((_) => _refreshIndicatorKey.currentState?.show());
    });
  }

  Future<void> fetchItemFromLocalHost() async {
    changeLoading();
    final response = await dio.get('users');
    if (response.statusCode == 200) {
      final userData = response.data;
      if (userData is List) {
        items = userData.map((e) => RefreshModel.fromJson(e)).toList();
      }
    }
    changeLoading();
  }

  bool? deleteItemFromApi(int id) {
    final response = dio.delete('users/$id');
    return null;
  }

  // Future<void> deleteItemFromApi(int userId) async {
  //   projectService.removeItemFromLocalHost(userId);
  // }

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      appBar: AppBar(),
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: fetchItemFromLocalHost,
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator()
              : ListView.builder(
                  itemCount: items?.length ?? 0,
                  itemBuilder: (context, index) => Card(
                    color: Color(items?[index].changeColorValue ?? 0),
                    child: ListTile(
                        onTap: () {
                          setState(() {
                            deleteItemFromApi(items?[index].id ?? 0);
                            _refreshIndicatorKey.currentState?.show();
                          });
                        },
                        leading: Text(items?[index].age.toString() ?? ''),
                        title: Text(items?[index].name ?? ''),
                        subtitle: Text(items?[index].surname ?? ''),
                        trailing: Text(items?[index].title ?? '')),
                  ),
                ),
        ),
      ),
    );
  }
}

abstract class ProjectLoading<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;
  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
