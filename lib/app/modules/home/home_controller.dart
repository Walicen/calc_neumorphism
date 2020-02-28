import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  static const operations = const ['⁺⁄₋', '%', '÷', '*', '-', '+'];
  @observable
  String inputs = '';

  @observable
  String operation = '';

  @action
  void add(String value) {
    if (operations.contains(value)) {
      print('OPERAÇÃO');
      operation = value;
      inputs = '';
    } else {
      inputs += value;
    }
  }

  @action
  void reset() {
    inputs = '';
  }

  @action
  result() {
    List<String> list = inputs.split(new RegExp(r'[^\w\s]+'));
    print(list.length);
    list.forEach((value) => print('$value'));
  }
}
