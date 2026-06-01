import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'agregar_mascota_page_widget.dart' show AgregarMascotaPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AgregarMascotaPageModel
    extends FlutterFlowModel<AgregarMascotaPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for NomMas widget.
  FocusNode? nomMasFocusNode;
  TextEditingController? nomMasTextController;
  String? Function(BuildContext, String?)? nomMasTextControllerValidator;
  // State field(s) for DropEsp widget.
  String? dropEspValue;
  FormFieldController<String>? dropEspValueController;
  // State field(s) for DropPerro widget.
  String? dropPerroValue;
  FormFieldController<String>? dropPerroValueController;
  // State field(s) for DropGato widget.
  String? dropGatoValue;
  FormFieldController<String>? dropGatoValueController;
  // State field(s) for RadioGen widget.
  FormFieldController<String>? radioGenValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  DateTime? datePicked;
  // State field(s) for CheckEst widget.
  bool? checkEstValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomMasFocusNode?.dispose();
    nomMasTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }

  /// Additional helper methods.
  String? get radioGenValue => radioGenValueController?.value;
}
