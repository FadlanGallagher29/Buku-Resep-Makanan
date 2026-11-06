import 'package:flutter/material.dart';
import '../models/resep_model.dart';

class DetailView extends StatelessWidget {
final Resep resep;

const DetailView({
super.key,
required this.resep,
});

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: const Color(0xFFFFF8F0),
appBar: AppBar(
title: const Text(
'Detail Resep',
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
),
),
backgroundColor: Colors.deepOrange,
iconTheme: const IconThemeData(
color: Colors.white,
),
centerTitle: true,
),
body: SingleChildScrollView(
child: Padding(
padding: const EdgeInsets.all(16),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
width: double.infinity,
height: 180,
decoration: BoxDecoration(
color: Colors.orange.shade100,
borderRadius: BorderRadius.circular(20),
),
child: const Icon(
Icons.restaurant_menu,
size: 100,
color: Colors.deepOrange,
),
),

          const SizedBox(height: 20),

          Text(
            resep.nama,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          Row(
            children: [
              Chip(
                avatar: const Icon(
                  Icons.bar_chart,
                  color: Colors.deepOrange,
                  size: 18,
                ),
                label: Text(resep.kesulitan),
                backgroundColor: Colors.orange.shade100,
              ),
              const SizedBox(width: 10),
              Chip(
                avatar: const Icon(
                  Icons.access_time,
                  color: Colors.deepOrange,
                  size: 18,
                ),
                label: Text('${resep.durasiMenit} menit'),
                backgroundColor: Colors.orange.shade100,
              ),
            ],
          ),

          const SizedBox(height: 24),

          const Text(
            'Bahan-bahan',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: resep.bahan.map((bahan) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 7,
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 20,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            bahan,
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),

          const SizedBox(height: 24),

          const Text(
            'Langkah-langkah Memasak',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          ...List.generate(resep.langkah.length, (index) {
            return Card(
              margin: const EdgeInsets.only(bottom: 10),
              elevation: 2,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.deepOrange,
                  child: Text(
                    '${index + 1}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: Text(
                  resep.langkah[index],
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            );
          }),

          const SizedBox(height: 20),

          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text('Kembali ke Daftar Resep'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 14,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    ),
  ),
);

}
}