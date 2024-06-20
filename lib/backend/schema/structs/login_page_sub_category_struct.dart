// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginPageSubCategoryStruct extends BaseStruct {
  LoginPageSubCategoryStruct({
    List<String>? name,
    List<int>? id,
  })  : _name = name,
        _id = id;

  // "name" field.
  List<String>? _name;
  List<String> get name => _name ?? const [];
  set name(List<String>? val) => _name = val;

  void updateName(Function(List<String>) updateFn) {
    updateFn(name ??= []);
  }

  bool hasName() => _name != null;

  // "id" field.
  List<int>? _id;
  List<int> get id => _id ?? const [];
  set id(List<int>? val) => _id = val;

  void updateId(Function(List<int>) updateFn) {
    updateFn(id ??= []);
  }

  bool hasId() => _id != null;

  static LoginPageSubCategoryStruct fromMap(Map<String, dynamic> data) =>
      LoginPageSubCategoryStruct(
        name: getDataList(data['name']),
        id: getDataList(data['id']),
      );

  static LoginPageSubCategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? LoginPageSubCategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
          isList: true,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
          isList: true,
        ),
      }.withoutNulls;

  static LoginPageSubCategoryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LoginPageSubCategoryStruct(
        name: deserializeParam<String>(
          data['name'],
          ParamType.String,
          true,
        ),
        id: deserializeParam<int>(
          data['id'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'LoginPageSubCategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LoginPageSubCategoryStruct &&
        listEquality.equals(name, other.name) &&
        listEquality.equals(id, other.id);
  }

  @override
  int get hashCode => const ListEquality().hash([name, id]);
}

LoginPageSubCategoryStruct createLoginPageSubCategoryStruct() =>
    LoginPageSubCategoryStruct();
