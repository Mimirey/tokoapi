import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:latihan_tokoapi/models/buku.dart';

class BukuService{
  final DatabaseReference _ref =
  FirebaseDatabase.instance.ref('buku');

  Stream<List<Buku>> streamBuku(){
    return _ref.onValue.map((event){
      final data= event.snapshot.value;

      if (data == null) return [];

      final Map map= data as Map;
      final List<Buku> list= [];

      map.forEach((key, value){
        list.add(Buku.fromMap(key, value));
      });

      return list;
    });
  }

  Future<void> tambahBuku (Buku buku) async {
    await _ref.push().set(buku.toMap());
  }

  Future<void> updateBuku(Buku buku)async {
    await _ref.child(buku.id).update(buku.toMap());
  }

  Future<void> hapusBuku (String id) async {
    await _ref.child(id).remove();
  }
}