class Buku {
  final String id;
  final String gambarUrl;
  final String genre;
  final String author;
  final int harga;
  final String nama;

  Buku( {required this.id, required this.gambarUrl, required this.genre, required this.author, required this.harga, required this.nama,});

  factory Buku.fromMap(String id, Map data){
    return Buku(
      id: id, 
      gambarUrl: data['gambarUrl'], 
      genre: data['genre'], 
      author: data['author'], 
      harga: data['harga'],
      nama: data['nama']
    );
  }

  Map<String, dynamic> toMap(){
    return {
      "nama": nama,
      "author": author,
      "genre": genre,
      "gambar": gambarUrl,
      "harga": harga
    };
  }
}