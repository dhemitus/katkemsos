 class Location {
  final int rn;
  final String nama_lengkap;
  final int id_pendamping;
  final String nomor_kat;
  final int tahun;
  final int id;
  final String periode_awal;
  final String periode_akhir;
  final String nama_lokasi;
  final int id_desa;
  final double latitude;
  final double longitude;
  final String nama_kecamatan;
  final String nama_kabupaten;
  final String nama_provinsi;

  Location({
    this.rn,
    this.nama_lengkap,
    this.id_pendamping,
    this.nomor_kat,
    this.tahun,
    this.id,
    this.periode_awal,
    this.periode_akhir,
    this.nama_lokasi,
    this.id_desa,
    this.latitude,
    this.longitude,
    this.nama_kecamatan,
    this.nama_kabupaten,
    this.nama_provinsi
  });

  factory Location.fromJson(Map<String, dynamic> json){
    return Location(
      rn : json['rn']!= null ? int.parse(json['rn']) : null,
      nama_lengkap : json['nama_lengkap'],
      id_pendamping : json['id_pendamping'] != null ? int.parse(json['id_pendamping']) : null,
      nomor_kat : json['nomor_kat'],
      tahun : json['tahun'] != null ? int.parse(json['tahun']) : null,
      id : json['id'] != null ? int.parse(json['id']) : null,
      periode_awal : json['periode_awal'],
      periode_akhir : json['periode_akhir'],
      nama_lokasi : json['nama_lokasi'],
      id_desa : json['id_desa'] != null ? int.parse(json['id_desa']) : null,
      latitude : json['latitude'] != null ? double.parse(json['latitude']) : null,
      longitude : json['longitude'] != null ? double.parse(json['longitude']) : null,
      nama_kecamatan : json['nama_kecamatan'],
      nama_kabupaten : json['nama_kabupaten'],
      nama_provinsi : json['nama_provinsi']
    );
  }
}