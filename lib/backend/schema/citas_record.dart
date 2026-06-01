import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CitasRecord extends FirestoreRecord {
  CitasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fecha_hora" field.
  DateTime? _fechaHora;
  DateTime? get fechaHora => _fechaHora;
  bool hasFechaHora() => _fechaHora != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "notas" field.
  String? _notas;
  String get notas => _notas ?? '';
  bool hasNotas() => _notas != null;

  // "mascota_nombre" field.
  String? _mascotaNombre;
  String get mascotaNombre => _mascotaNombre ?? '';
  bool hasMascotaNombre() => _mascotaNombre != null;

  // "uid_usuario" field.
  DocumentReference? _uidUsuario;
  DocumentReference? get uidUsuario => _uidUsuario;
  bool hasUidUsuario() => _uidUsuario != null;

  void _initializeFields() {
    _fechaHora = snapshotData['fecha_hora'] as DateTime?;
    _estado = snapshotData['estado'] as String?;
    _notas = snapshotData['notas'] as String?;
    _mascotaNombre = snapshotData['mascota_nombre'] as String?;
    _uidUsuario = snapshotData['uid_usuario'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CITAS');

  static Stream<CitasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CitasRecord.fromSnapshot(s));

  static Future<CitasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CitasRecord.fromSnapshot(s));

  static CitasRecord fromSnapshot(DocumentSnapshot snapshot) => CitasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CitasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CitasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CitasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CitasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCitasRecordData({
  DateTime? fechaHora,
  String? estado,
  String? notas,
  String? mascotaNombre,
  DocumentReference? uidUsuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fecha_hora': fechaHora,
      'estado': estado,
      'notas': notas,
      'mascota_nombre': mascotaNombre,
      'uid_usuario': uidUsuario,
    }.withoutNulls,
  );

  return firestoreData;
}

class CitasRecordDocumentEquality implements Equality<CitasRecord> {
  const CitasRecordDocumentEquality();

  @override
  bool equals(CitasRecord? e1, CitasRecord? e2) {
    return e1?.fechaHora == e2?.fechaHora &&
        e1?.estado == e2?.estado &&
        e1?.notas == e2?.notas &&
        e1?.mascotaNombre == e2?.mascotaNombre &&
        e1?.uidUsuario == e2?.uidUsuario;
  }

  @override
  int hash(CitasRecord? e) => const ListEquality().hash(
      [e?.fechaHora, e?.estado, e?.notas, e?.mascotaNombre, e?.uidUsuario]);

  @override
  bool isValidKey(Object? o) => o is CitasRecord;
}
