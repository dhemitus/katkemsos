class Report {
  final int id;
  final int id_pendamping;
  final int nomor_kat;
  final int tahun;
  final String periode_awal;
  final String periode_akhir;
  final int created_by;
  final String created_at;
  final int modified_by;
  final String modified_at;
  final int deleted_by;
  final int is_deleted;
  final String deleted_at;
  final int is_confirm;
  final int confirm_by;
  final String confirm_at;

  Report({
    this.id, 
    this.id_pendamping,
    this.nomor_kat,
    this.tahun,
    this.periode_awal,
    this.periode_akhir,
    this.created_by,
    this.created_at,
    this.modified_by,
    this.modified_at,
    this.deleted_by,
    this.is_deleted,
    this.deleted_at,
    this.is_confirm,
    this.confirm_by,
    this.confirm_at
  });

  factory Report.fromJson(Map<String, dynamic> json){
    return Report(
      id : int.parse(json['id']),
      id_pendamping : int.parse(json['id_pendamping']),
      nomor_kat : int.parse(json['nomor_kat']),
      tahun : int.parse(json['tahun']),
      periode_awal : json['periode_awal'],
      periode_akhir : json['periode_akhir'],
      created_by : int.parse(json['created_by']),
      created_at : json['created_at'],
      modified_by : int.parse(json['modified_by']),
      modified_at : json['modified_at'],
      deleted_by : int.parse(json['deleted_by']),
      is_deleted : int.parse(json['is_deleted']),
      deleted_at : json['deleted_at'],
      is_confirm : int.parse(json['is_confirm']),
      confirm_by : int.parse(json['confirm_by']),
      confirm_at : json['confirm_at']
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

    return _map;
  }
}