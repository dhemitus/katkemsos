import 'package:flutter_katkemsos/model/report.dart';

class Psks extends Report {
  final int jumlah;
  final String satuan;
  final String nama_kontak;
  final String kode;
  final String psks;

  Psks({
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
    this.satuan,
    this.nama_kontak,
    this.kode,
    this.psks})
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

  factory Psks.fromJson(Map<String, dynamic> json) {
    final report = Report.fromJson(json);

    final jumlah = int.parse(json['jumlah']);
    final satuan = json['satuan'];
    final nama_kontak = json['nama_kontak'];
    final kode = json['kode'];
    final psks = json['psks'];

    return Psks(
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
      satuan:satuan,
      nama_kontak:nama_kontak,
      kode:kode,
      psks:psks
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
    _map['satuan'] = satuan;
    _map['nama_kontak'] = nama_kontak;
    _map['kode'] = kode;
    _map['psks'] = psks;

    return _map;
  }
}