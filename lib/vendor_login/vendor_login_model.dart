import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'vendor_login_widget.dart' show VendorLoginWidget;
import 'package:flutter/material.dart';

class VendorLoginModel extends FlutterFlowModel<VendorLoginWidget> {
  ///  Local state fields for this page.

  int stateVar = 0;

  List<String> value = [];
  void addToValue(String item) => value.add(item);
  void removeFromValue(String item) => value.remove(item);
  void removeAtIndexFromValue(int index) => value.removeAt(index);
  void insertAtIndexInValue(int index, String item) =>
      value.insert(index, item);
  void updateValueAtIndex(int index, Function(String) updateFn) =>
      value[index] = updateFn(value[index]);

  List<int> categoryid = [];
  void addToCategoryid(int item) => categoryid.add(item);
  void removeFromCategoryid(int item) => categoryid.remove(item);
  void removeAtIndexFromCategoryid(int index) => categoryid.removeAt(index);
  void insertAtIndexInCategoryid(int index, int item) =>
      categoryid.insert(index, item);
  void updateCategoryidAtIndex(int index, Function(int) updateFn) =>
      categoryid[index] = updateFn(categoryid[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for DropDown widget.
  int? dropDownValue1;
  FormFieldController<int>? dropDownValueController1;
  // Stores action output result for [Backend Call - API (getdistinct)] action in DropDown widget.
  ApiCallResponse? apiResultuht;
  // State field(s) for DropDown widget.
  int? dropDownValue2;
  FormFieldController<int>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  StaffsRow? action;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordConfirmVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();
  }
}
