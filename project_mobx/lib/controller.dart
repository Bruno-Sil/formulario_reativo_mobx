import 'package:mobx/mobx.dart';
part 'controller.g.dart';


class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store{
 @observable
 String nome = '';

 @computed
 String get nomecompleto => "$nome $sobrenome";

 @observable
 String sobrenome = '';

 @action
 mudarNome(String newName) {
   nome = newName;

 }

 @action 
 mudarSobreNome(String newName) {
   sobrenome = newName;
 }
}