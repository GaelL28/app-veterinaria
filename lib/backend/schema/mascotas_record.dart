import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MascotasRecord extends FirestoreRecord {
  MascotasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid_tutor" field.
  DocumentReference? _uidTutor;
  DocumentReference? get uidTutor => _uidTutor;
  bool hasUidTutor() => _uidTutor != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "especie" field.
  String? _especie;
  String get especie => _especie ?? '';
  bool hasEspecie() => _especie != null;

  // "raza" field.
  String? _raza;
  String get raza => _raza ?? '';
  bool hasRaza() => _raza != null;

  // "genero" field.
  String? _genero;
  String get genero => _genero ?? '';
  bool hasGenero() => _genero != null;

  // "fecha_nacimiento" field.
  DateTime? _fechaNacimiento;
  DateTime? get fechaNacimiento => _fechaNacimiento;
  bool hasFechaNacimiento() => _fechaNacimiento != null;

  // "esterilizado" field.
  bool? _esterilizado;
  bool get esterilizado => _esterilizado ?? false;
  bool hasEsterilizado() => _esterilizado != null;

  // "activo" field.
  bool? _activo;
  bool get activo => _activo ?? false;
  bool hasActivo() => _activo != null;

  void _initializeFields() {
    _uidTutor = snapshotData['uid_tutor'] as DocumentReference?;
    _nombre = snapshotData['nombre'] as String?;
    _especie = snapshotData['especie'] as String?;
    _raza = snapshotData['raza'] as String?;
    _genero = snapshotData['genero'] as String?;
    _fechaNacimiento = snapshotData['fecha_nacimiento'] as DateTime?;
    _esterilizado = snapshotData['esterilizado'] as bool?;
    _activo = snapshotData['activo'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MASCOTAS');

  static Stream<MascotasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MascotasRecord.fromSnapshot(s));

  static Future<MascotasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MascotasRecord.fromSnapshot(s));

  static MascotasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MascotasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MascotasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MascotasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MascotasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MascotasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMascotasRecordData({
  DocumentReference? uidTutor,
  String? nombre,
  String? especie,
  String? raza,
  String? genero,
  DateTime? fechaNacimiento,
  bool? esterilizado,
  bool? activo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid_tutor': uidTutor,
      'nombre': nombre,
      'especie': especie,
      'raza': raza,
      'genero': genero,
      'fecha_nacimiento': fechaNacimiento,
      'esterilizado': esterilizado,
      'activo': activo,
    }.withoutNulls,
  );

  return firestoreData;
}

class MascotasRecordDocumentEquality implements Equality<MascotasRecord> {
  const MascotasRecordDocumentEquality();

  @override
  bool equals(MascotasRecord? e1, MascotasRecord? e2) {
    return e1?.uidTutor == e2?.uidTutor &&
        e1?.nombre == e2?.nombre &&
        e1?.especie == e2?.especie &&
        e1?.raza == e2?.raza &&
        e1?.genero == e2?.genero &&
        e1?.fechaNacimiento == e2?.fechaNacimiento &&
        e1?.esterilizado == e2?.esterilizado &&
        e1?.activo == e2?.activo;
  }

  @override
  int hash(MascotasRecord? e) => const ListEquality().hash([
        e?.uidTutor,
        e?.nombre,
        e?.especie,
        e?.raza,
        e?.genero,
        e?.fechaNacimiento,
        e?.esterilizado,
        e?.activo
      ]);

  @override
  bool isValidKey(Object? o) => o is MascotasRecord;
}
