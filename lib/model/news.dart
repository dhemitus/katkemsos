class News {
  final int id;
  final String judul;
  final String deskripsi;
  final String nama_file;
  final String download_url;
  final String kategori;
  final String created_at;
  final int created_by;
  final String modified_at;
  final int modified_by;
  final String username;
  final String fullname;

  News({
    this.id,
    this.judul,
    this.deskripsi,
    this.nama_file,
    this.download_url,
    this.kategori,
    this.created_at,
    this.created_by,
    this.modified_at,
    this.modified_by,
    this.username,
    this.fullname
  });

  factory News.fromJson(Map<String, dynamic> json){
    return News(
      id : int.parse(json['id']),
      judul : json['judul'],
      deskripsi : json['deskripsi'],
      nama_file : json['nama_file'],
      download_url : json['download_url'],
      kategori : json['kategori'],
      created_at : json['created_at'],
      created_by : json['created_by'] != null ? int.parse(json['created_by']) : null,
      modified_at : json['modified_at'],
      modified_by : json['modified_by'] != null ? int.parse(json['modified_by']) : null,
      username : json['username'],
      fullname : json['fullname']
    );
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> _map = Map<String, dynamic>();

    _map['id'] = id;
    _map['judul'] = judul;
    _map['deskripsi'] = deskripsi;
    _map['nama_file'] = nama_file;
    _map['download_url'] = download_url;
    _map['kategori'] = kategori;
    _map['created_at'] = created_at;
    _map['created_by'] = created_by;
    _map['modified_at'] = modified_at;
    _map['modified_by'] = modified_by;
    _map['username'] = username;
    _map['fullname'] = fullname;

    return _map;
  }
}