// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryTypeStruct extends BaseStruct {
  CategoryTypeStruct({
    List<String>? categoryName,
  }) : _categoryName = categoryName;

  // "CategoryName" field.
  List<String>? _categoryName;
  List<String> get categoryName => _categoryName ?? const [];
  set categoryName(List<String>? val) => _categoryName = val;

  void updateCategoryName(Function(List<String>) updateFn) {
    updateFn(categoryName ??= []);
  }

  bool hasCategoryName() => _categoryName != null;

  static CategoryTypeStruct fromMap(Map<String, dynamic> data) =>
      CategoryTypeStruct(
        categoryName: getDataList(data['CategoryName']),
      );

  static CategoryTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? CategoryTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CategoryName': _categoryName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CategoryName': serializeParam(
          _categoryName,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static CategoryTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoryTypeStruct(
        categoryName: deserializeParam<String>(
          data['CategoryName'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'CategoryTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CategoryTypeStruct &&
        listEquality.equals(categoryName, other.categoryName);
  }

  @override
  int get hashCode => const ListEquality().hash([categoryName]);
}

CategoryTypeStruct createCategoryTypeStruct() => CategoryTypeStruct();
