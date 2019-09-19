import 'package:flutter_katkemsos/model/report.dart';

class Real extends Report {
  final String tahun_1;
  final String tahun_2;
  final String tahun_3;
  final String kode;
  final String realisasi;

  Real({
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

    this.tahun_1,
    this.tahun_2,
    this.tahun_3,
    this.kode,
    this.realisasi})
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

  factory Real.fromJson(Map<String, dynamic> json) {
    final report = Report.fromJson(json);

    final tahun_1 = json['tahun_1'];
    final tahun_2 = json['tahun_2'];
    final tahun_3 = json['tahun_3'];
    final kode = json['kode'];
    final realisasi = json['realisasi'];

    return Real(
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
      tahun_1:tahun_1,
      tahun_2:tahun_2,
      tahun_3:tahun_3,
      kode:kode,
      realisasi:realisasi
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

    _map['tahun_1'] = tahun_1;
    _map['tahun_2'] = tahun_2;
    _map['tahun_3'] = tahun_3;
    _map['kode'] = kode;
    _map['realisasi'] = realisasi;

    return _map;
  }
}