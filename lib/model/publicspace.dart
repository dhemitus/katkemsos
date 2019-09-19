import 'package:flutter_katkemsos/model/report.dart';

class PublicSpace extends Report {
  final int jumlah;
  final double jarak_tempuh;
  final int kondisi_b;
  final int kondisi_c;
  final int kondisi_r;
  final int penggunaan_s;
  final int penggunaan_j;
  final int penggunaan_t;
  final String kode;
  final String fasum;

  PublicSpace({
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

    this.jumlah,
    this.jarak_tempuh,
    this.kondisi_b,
    this.kondisi_c,
    this.kondisi_r,
    this.penggunaan_s,
    this.penggunaan_j,
    this.penggunaan_t,
    this.kode,
    this.fasum})
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

  factory PublicSpace.fromJson(Map<String, dynamic> json) {
    final report = Report.fromJson(json);

    final jumlah = int.parse(json['jumlah']);
    final jarak_tempuh = double.parse(json['jarak_tempuh']);
    final kondisi_b = int.parse(json['kondisi_b']);
    final kondisi_c = int.parse(json['kondisi_c']);
    final kondisi_r = int.parse(json['kondisi_r']);
    final penggunaan_s = int.parse(json['penggunaan_s']);
    final penggunaan_j = int.parse(json['penggunaan_j']);
    final penggunaan_t = int.parse(json['penggunaan_t']);
    final kode = json['kode'];
    final fasum = json['fasum'];

    return PublicSpace(
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
      jumlah:jumlah,
      jarak_tempuh:jarak_tempuh,
      kondisi_b:kondisi_b,
      kondisi_c:kondisi_c,
      kondisi_r:kondisi_r,
      penggunaan_s:penggunaan_s,
      penggunaan_j:penggunaan_j,
      penggunaan_t:penggunaan_t,
      kode:kode,
      fasum:fasum
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

    _map['jumlah'] = jumlah;
    _map['jarak_tempuh'] = jarak_tempuh;
    _map['kondisi_b'] = kondisi_b;
    _map['kondisi_c'] = kondisi_c;
    _map['kondisi_r'] = kondisi_r;
    _map['penggunaan_s'] = penggunaan_s;
    _map['penggunaan_j'] = penggunaan_j;
    _map['penggunaan_t'] = penggunaan_t;
    _map['kode'] = kode;
    _map['fasum'] = fasum;

    return _map;
  }
}