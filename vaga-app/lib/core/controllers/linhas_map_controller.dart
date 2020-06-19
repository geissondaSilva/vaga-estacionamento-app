import 'package:mobx/mobx.dart';
part 'linhas_map_controller.g.dart';

class LinhasMapController = _LinhasMapControllerBase with _$LinhasMapController;

abstract class _LinhasMapControllerBase with Store {

  @observable
  bool openedList = false;

  @action
  void toggList() {
    openedList = !openedList;
  }
}