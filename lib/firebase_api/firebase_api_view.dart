import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:widget_function/firebase_api/firebase_model.dart';

class FirebaseApiView extends StatefulWidget {
  const FirebaseApiView({super.key});

  @override
  State<FirebaseApiView> createState() => _FirebaseApiViewState();
}

class _FirebaseApiViewState extends ProjectLoading<FirebaseApiView> {
  List<FirebaseModel>? items;
  Dio dio = Dio(BaseOptions(baseUrl: 'https://rtr-rrtrt-r-default-rtdb.firebaseio.com/'));
  @override
  void initState() {
    super.initState();
    fetchItemFromApi();
    WidgetsBinding.instance.addPostFrameCallback((_) => _refreshIndicatorKey.currentState?.show());
  }

  Future<List<FirebaseModel>?> fetchItemFromApi() async {
    changeWaitValue();
    final response = await dio.get('users.json');
    if (response.statusCode == 200) {
      final userData = response.data;
      if (userData is List) {
        items = userData.map((e) => FirebaseModel.fromJson(e)).toList();
      }
    }
    changeWaitValue();
    return null;
  }

  Future<void> deleteItem(int id) async {
    final response = await dio.delete('users/$id');
    return response.data;
  }

  bool checkBox = false;
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          centerTitle: true,
        ),
        body: RefreshIndicator(
          onRefresh: fetchItemFromApi,
          key: _refreshIndicatorKey,
          child: isWait
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: items?.length ?? 0,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: Color(items?[index].changeColorValue ?? 0),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage("${items?[index].avatar}"),
                            radius: 16,
                          ),
                          subtitle: Text(
                            items?[index].email ?? " Error",
                            style: const TextStyle(color: Colors.white),
                          ),
                          title: Text(
                            "${items?[index].firstName ?? "Error "} ${items?[index].lastName}",
                            style: const TextStyle(color: Colors.white),
                          ),
                          trailing: Wrap(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    deleteItem(items?[index].id ?? 0);
                                    _refreshIndicatorKey.currentState?.show();
                                  });
                                },
                                color: Colors.white,
                                icon: const Icon(Icons.delete),
                              ),
                              Checkbox(value: checkBox, onChanged: ((value) {}))
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            const AlertDialog(
              title: Text("dad"),
              actions: [
                TextField(),
                SizedBox(
                  height: 150,
                  width: 15,
                )
              ],
            );
          },
          child: const Icon(Icons.add),
        ));
  }
}

abstract class ProjectLoading<T extends StatefulWidget> extends State<T> {
  bool isWait = false;
  void changeWaitValue() {
    setState(() {
      isWait = !isWait;
    });
  }
}
