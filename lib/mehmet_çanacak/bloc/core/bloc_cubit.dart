import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum HomeTab { page1, page2, page3 }

class HomeState extends Equatable {
  final HomeTab tab;
  const HomeState({this.tab = HomeTab.page1});
  @override
  List<Object?> get props => [tab];
}

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  void setTab(HomeTab tab) {
    emit(HomeState(tab: tab));
  }
}
