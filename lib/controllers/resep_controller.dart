import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/resep_model.dart';

class ResepController {
    Future<List<Resep>>ambilResep() async {
        final String response = await rootBundle.loadString('assets/data/resep.json');

        final List<dynamic> data = jsonDecode(response);

        return data.map((item) => Resep.fromJson(item)).toList();
    }
}