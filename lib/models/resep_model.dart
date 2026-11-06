class Resep {
  final int id;
  final String nama;
  final String kesulitan;
  final int durasiMenit;
  final List<String> bahan;
  final List<String> langkah;

  Resep({
    required this.id,
    required this.nama,
    required this.kesulitan,
    required this.durasiMenit,
    required this.bahan,
    required this.langkah,
  });

  factory Resep.fromJson(Map<String, dynamic> json) {
    return Resep(
      id: json['id'],
      nama: json['nama'],
      kesulitan: json['kesulitan'],
      durasiMenit: json['durasiMenit'],
      bahan: List<String>.from(json['bahan']),
      langkah: List<String>.from(json['langkah']),
    );
  }
}
