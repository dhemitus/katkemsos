import 'package:flutter_katkemsos/model/report.dart';

class Family extends Report {
  final int nomor_kk;
  final String kepala_keluarga;
  final String nama_lengkap;
  final String lp;
  final int umur;
  final int id_pekerjaan_pendidikan_kk;
  final int id_hubungan_kk;
  final String pekerjaan;
  final String hubungan;

  Family({
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

    this.nomor_kk,
    this.kepala_keluarga,
    this.nama_lengkap,
    this.lp,
    this.umur,
    this.id_pekerjaan_pendidikan_kk,
    this.id_hubungan_kk,
    this.pekerjaan,
    this.hubungan})
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

  factory Family.fromJson(Map<String, dynamic> json) {
    final report = Report.fromJson(json);

    final nomor_kk = int.parse(json['nomor_kk']);
    final kepala_keluarga = json['kepala_keluarga'];
    final nama_lengkap = json['nama_lengkap'];
    final lp = json['lp'];
    final umur = int.parse(json['umur']);
    final id_pekerjaan_pendidikan_kk = int.parse(json['id_pekerjaan_pendidikan_kk']);
    final id_hubungan_kk = int.parse(json['id_hubungan_kk']);
    final pekerjaan = json['pekerjaan'];
    final hubungan = json['hubungan'];

    return Family(
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
      nomor_kk:nomor_kk,
      kepala_keluarga:kepala_keluarga,
      nama_lengkap:nama_lengkap,
      lp:lp,
      umur:umur,
      id_pekerjaan_pendidikan_kk:id_pekerjaan_pendidikan_kk,
      id_hubungan_kk:id_hubungan_kk,
      pekerjaan:pekerjaan,
      hubungan:hubungan
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

    _map['nomor_kk'] = nomor_kk;
    _map['kepala_keluarga'] = kepala_keluarga;
    _map['nama_lengkap'] = nama_lengkap;
    _map['lp'] = lp;
    _map['umur'] = umur;
    _map['id_pekerjaan_pendidikan_kk'] = id_pekerjaan_pendidikan_kk;
    _map['id_hubungan_kk'] = id_hubungan_kk;
    _map['pekerjaan'] = pekerjaan;
    _map['hubungan'] = hubungan;

    return _map;
  }
}