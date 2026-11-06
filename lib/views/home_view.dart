import 'package/material.dart';
import '../controllers/resep_controller.dart';
import '../models/resep_model.dart';
import '../widgets/resep_card.dart';
import 'detail_view.dart';

class HomeView extends StatefulWidget {
    const HomeView({super.key});

    @override
    State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
    final ResepController controller = ResepController();

    late Future<List<Resep>> daftarResep;

    @override
    void initState() {
        super.initState();
        daftarResep = controller.ambilResep();
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: const Color(0xFFFFF8F0),
            appBar: AppBar (
                title: const Text('Buku Resep Masakan'),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                ),
            ),
            backgroundColor: Colors.deepOrange,
            centerTitle: true,
        ),
        body: FutureBuilder<List<Resep>>(
            future: daftarResep,
            builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                        child: CircularProgressIndicator(),
                    );
                }

                if (snapshot.hasError) {
                    return const Center(
                        child: Text('Gagal memuat data resep.'),
                    );
                }

                final reserp = snapshot.data ?? [];

                return Column(
                    crossAxisAligment: CrossAxisAlignment.start,
                    children: [
                        Container(
                            width: double.infinity,
                            margin: const EdgeInsets.all(16),
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Column(
                                crossAxisAligment: CrossAxisAlignment.start,
                                children: [
                                    Text(
                                        'Selamat Datang di Buku Resep Masakan',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                        ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                        'Temukan berbagai resep masakan lezat di sini.',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                        ),
                                    ),
                                ],
                            ),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                                'Daftar Resep (${resep.length})',
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                ),
                            ),
                        ),
                        const SizedBox(height: 8),
                        Expanded(
                            child: ListView.builder(
                                itemCount: resep.length,
                                itemBuilder: (context, index) {
                                    return ResepCard(
                                        resep: resep[index],
                                        onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => DetailView(
                                                        resep: resep[index]
                                                    ),
                                                ),
                                            );
                                        },
                                    );
                                },
                            ),
                        ),
                    ],
                );
            },
        ),
    );
    }
}