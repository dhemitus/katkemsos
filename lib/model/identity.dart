import 'package:flutter_katkemsos/model/report.dart';

class Identity extends Report {
  final String nama_lokasi;
  final int jumlah_kk;
  final String nama_suku;
  final String sub_suku;
  final double luas_wilayah;
  final double suhu_udara;
  final String kemarau_bulan_awal;
  final String kemarau_bulan_akhir;
  final String penghujan_bulan_awal;
  final String penghujan_bulan_akhir;
  final int kecamatan;
  final int kabupaten;
  final int provinsi;

  Identity({
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

    this.nama_lokasi,
    this.jumlah_kk,
    this.nama_suku,
    this.sub_suku,
    this.luas_wilayah,
    this.suhu_udara,
    this.kemarau_bulan_awal,
    this.kemarau_bulan_akhir,
    this.penghujan_bulan_awal,
    this.penghujan_bulan_akhir,
    this.kecamatan,
    this.kabupaten,
    this.provinsi})
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

  factory Identity.fromJson(Map<String, dynamic> json) {
    final report = Report.fromJson(json);

    final nama_lokasi = json['nama_lokasi'];
    final jumlah_kk =  json['jumlah_kk'];
    final nama_suku = json['nama_suku'];
    final sub_suku = json['sub_suku'];
    final luas_wilayah = json['luas_wilayah'];
    final suhu_udara = json['suhu_udara'];
    final kemarau_bulan_awal = json['kemarau_bulan_awal'];
    final kemarau_bulan_akhir = json['kemarau_bulan_akhir'];
    final penghujan_bulan_awal = json['penghujan_bulan_awal'];
    final penghujan_bulan_akhir = json['penghujan_bulan_akhir'];
    final kecamatan = json['kecamatan'];
    final kabupaten = json['kabupaten'];
    final provinsi = json['provinsi'];
    return Identity(
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

      nama_lokasi:nama_lokasi,
      jumlah_kk:jumlah_kk,
      nama_suku:nama_suku,
      sub_suku:sub_suku,
      luas_wilayah:luas_wilayah,
      suhu_udara:suhu_udara,
      kemarau_bulan_awal:kemarau_bulan_awal,
      kemarau_bulan_akhir:kemarau_bulan_akhir,
      penghujan_bulan_awal:penghujan_bulan_awal,
      penghujan_bulan_akhir:penghujan_bulan_akhir,
      kecamatan:kecamatan,
      kabupaten:kabupaten,
      provinsi:provinsi
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


    _map['nama_lokasi'] = nama_lokasi;
    _map['jumlah_kk'] = jumlah_kk;
    _map['nama_suku'] = nama_suku;
    _map['sub_suku'] = sub_suku;
    _map['luas_wilayah'] = luas_wilayah;
    _map['suhu_udara'] = suhu_udara;
    _map['kemarau_bulan_awal'] = kemarau_bulan_awal;
    _map['kemarau_bulan_akhir'] = kemarau_bulan_akhir;
    _map['penghujan_bulan_awal'] = penghujan_bulan_awal;
    _map['penghujan_bulan_akhir'] = penghujan_bulan_akhir;
    _map['kecamatan'] = kecamatan;
    _map['kabupaten'] = kabupaten;
    _map['provinsi'] = provinsi;

    return _map;
  }
}