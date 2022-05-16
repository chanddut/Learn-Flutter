// ignore: empty_constructor_bodies
import 'package:flutter/material.dart';

class Product {
  @required
  String judul;
  @required
  String imageURL;
  @required
  int harga;
  @required
  String deskripsi;

  Product(this.imageURL, this.judul, this.harga, this.deskripsi);
}
