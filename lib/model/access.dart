import 'package:flutter_katkemsos/model/report.dart';

class Access extends Report {
  final int id_laporan;

  final String route;
  final String jalur;
  final String alat_transportasi;
  final double jarak_tempuh;
  final String waktu_tempuh;
  final double biaya;
  final String mobilitas;
  final String faktor_kesulitan;

  Access({
    id, 
    id_pendamping,
    nomor_kat,
    tahun,
    periode_awal,
    periode_akhir,
    created_by,
    created_at,
    modified_by,
    modified_at,
    deleted_by,
    is_deleted,
    deleted_at,
    is_confirm,
    confirm_by,
    confirm_at,

    this.id_laporan,
    this.route,
    this.jalur,
    this.alat_transportasi,
    this.jarak_tempuh,
    this.waktu_tempuh,
    this.biaya,
    this.mobilitas,
    this.faktor_kesulitan})
    : super(
      id:id, 
      id_pendamping:id_pendamping,
      nomor_kat:nomor_kat,
      tahun:tahun,
      periode_awal:periode_awal,
      periode_akhir:periode_akhir,
      created_by:created_by,
      created_at:created_at,
      modified_by:modified_by,
      modified_at:modified_at,
      deleted_by:deleted_by,
      is_deleted:is_deleted,
      deleted_at:deleted_at,
      is_confirm:is_confirm,
      confirm_by:confirm_by,
      confirm_at:confirm_at,
  );

  factory Access.fromJson(Map<String, dynamic> json) {
    final report = Report.fromJson(json);

    final id_laporan = int.parse(json['id_laporan']);

    final route = json['route'];
    final jalur = json['jalur'];
    final alat_transportasi = json['alat_transportasi'];
    final jarak_tempuh = double.parse(json['jarak_tempuh']);
    final waktu_tempuh = json['waktu_tempuh'];
    final biaya = double.parse(json['biaya']);
    final mobilitas = json['mobilitas'];
    final faktor_kesulitan = json['faktor_kesulitan'];

    return Access(
      id:report.id, 
      id_pendamping:report.id_pendamping,
      nomor_kat:report.nomor_kat,
      tahun:report.tahun,
      periode_awal:report.periode_awal,
      periode_akhir:report.periode_akhir,
      created_by:report.created_by,
      created_at:report.created_at,
      modified_by:report.modified_by,
      modified_at:report.modified_at,
      deleted_by:report.deleted_by,
      is_deleted:report.is_deleted,
      deleted_at:report.deleted_at,
      is_confirm:report.is_confirm,
      confirm_by:report.confirm_by,
      confirm_at:report.confirm_at,
      id_laporan:id_laporan,
      route:route,
      jalur:jalur,
      alat_transportasi:alat_transportasi,
      jarak_tempuh:jarak_tempuh,
      waktu_tempuh:waktu_tempuh,
      biaya:biaya,
      mobilitas:mobilitas,
      faktor_kesulitan:faktor_kesulitan
    );
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> _map = Map<String, dynamic>();

    _map['id'] = id;
    _map['id_pendamping'] = id_pendamping;
    _map['nomor_kat'] = nomor_kat;
    _map['tahun'] = tahun;
    _map['periode_awal'] = periode_awal;
    _map['periode_akhir'] = periode_akhir;
    _map['created_by'] = created_by;
    _map['created_at'] = created_at;
    _map['modified_by'] = modified_by;
    _map['modified_at'] = modified_at;
    _map['deleted_by'] = deleted_by;
    _map['is_deleted'] = is_deleted;
    _map['deleted_at'] = deleted_at;
    _map['is_confirm'] = is_confirm;
    _map['confirm_by'] = confirm_by;
    _map['confirm_at'] = confirm_at;

    _map['id_laporan'] = id_laporan;
    _map['route'] = route;
    _map['jalur'] = jalur;
    _map['alat_transportasi'] = alat_transportasi;
    _map['jarak_tempuh'] = jarak_tempuh;
    _map['waktu_tempuh'] = waktu_tempuh;
    _map['biaya'] = biaya;
    _map['mobilitas'] = mobilitas;
    _map['faktor_kesulitan'] = faktor_kesulitan;

    return _map;
  }
}