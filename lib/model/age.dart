import 'package:flutter_katkemsos/model/report.dart';

class Age extends Report {
  final int jumlah_pr;
  final int jumlah_lk;
  final int jumlah_total;
  final int prosentase;
  final String kode;
  final String umur;

  Age({
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

    this.jumlah_pr,
    this.jumlah_lk,
    this.jumlah_total,
    this.prosentase,
    this.kode,
    this.umur})
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

  factory Age.fromJson(Map<String, dynamic> json) {
    final report = Report.fromJson(json);

    final jumlah_pr = int.parse(json['jumlah_pr']);
    final jumlah_lk = int.parse(json['jumlah_lk']);
    final jumlah_total = int.parse(json['jumlah_total']);
    final prosentase = int.parse(json['prosentase']);
    final kode = json['kode'];
    final umur = json['umur'];

    return Age(
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
      jumlah_pr:jumlah_pr,
      jumlah_lk:jumlah_lk,
      jumlah_total:jumlah_total,
      prosentase:prosentase,
      kode:kode,
      umur:umur
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

    _map['jumlah_pr'] = jumlah_pr;
    _map['jumlah_lk'] = jumlah_lk;
    _map['jumlah_total'] = jumlah_total;
    _map['prosentase'] = prosentase;
    _map['kode'] = kode;
    _map['umur'] = umur;

    return _map;
  }
}