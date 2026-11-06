import 'package:flutter/material.dart';
import '../models/resep_model.dart';

class ResepCard extends StatelessWidget {
    final Resep resep;
    final VoidCallback onTap;

    const ResepCard({
        super.key,
        required this.resep,
        required this.onTap,
    });

    @override
    Widget build(BuildContext context) {
        return Card(
            margin: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
            ),
            elevation: 3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
            ),
            child: inkWell(
                onTap: onTap,
                borderRadius: BorderRadius.circular(16),
                child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                        children: [
                            Container(
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                    color: Colors.orange.shade100,
                                    borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Icon(
                                    Icons.restaurant,
                                    size: 35,
                                    color: Colors.deepOrange,
                                ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Text(
                                            resep.nama,
                                            style: const TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold,
                                            ),
                                        ),
                                        const SizedBox(height: 8),
                                        Row(
                                            children: [
                                                const Icon(
                                                    Icons.bar_chart,
                                                    size: 18,
                                                    color: Colors.orange,
                                                ),
                                                const SizedBox(width: 5),
                                                Text(resep.kesulitan),
                                            ],
                                        ),
                                        const SizedBox(height: 5),
                                        Row(
                                            children: [
                                                const Icon(
                                                    Icons.access_time,
                                                    size: 18,
                                                    color: Colors.Grey,
                                                ),
                                                const SizedBox(width: 5),
                                                Text('${resep.durasiMenit} menit'),
                                            ],
                                        ),
                                    ],
                                ),
                            ),
                            const Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Colors.grey,
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}