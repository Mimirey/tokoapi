class Buku {
  final String id;
  final String gambar;
  final String genre;
  final String author;
  final int harga;
  final String nama;

  Buku( {required this.id, required this.gambar, required this.genre, required this.author, required this.harga, required this.nama,});

  factory Buku.fromMap(String id, Map data){
    return Buku(
      id: id, 
      gambar: data['gambar'] ?? '', 
      genre: data['genre']?? '', 
      author: data['author']?? '', 
      harga: data['harga'] is int
        ? data['harga']
        : int.tryParse(data['harga'].toString()) ?? 0,
      nama: data['nama']?? ''
    );
  }

  Map<String, dynamic> toMap(){
    return {
      "nama": nama,
      "author": author,
      "genre": genre,
      "gambar": gambar,
      "harga": harga
    };
  }
}