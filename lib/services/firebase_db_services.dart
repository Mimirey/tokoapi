import 'package:firebase_database/firebase_database.dart';

class FirebaseDbServices {
  final DatabaseReference _db =
  FirebaseDatabase.instance.ref();

  DatabaseReference get bukuRef => _db.child('buku');
}