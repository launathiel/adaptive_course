import 'package:adaptive_course/screens/DetailMateri/DetailMateriScreen.dart';
import 'package:adaptive_course/screens/DetailRekomendasiMateri/DetailRekomendasiMateri.dart';
import 'package:adaptive_course/screens/Index/components/RekomendasiMateri/MateriCard.dart';
import 'package:adaptive_course/models/ListMateri.dart';
import 'package:flutter/material.dart';

class RekomendasiMateri extends StatefulWidget {
  @override
  _RekomendasiMateri createState() => _RekomendasiMateri();
}

class _RekomendasiMateri extends State<RekomendasiMateri> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                'Rekomendasi Materi',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 14,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => 
                    DetailRekomendasiMateri()
                  ));
                },
                child: Text(
                  'Lihat Semua',
                  style: TextStyle(
                    color: Color(0xff326CE5),
                    fontSize: 12,
                  ),
                ),
              ),
            )
          ],
        ),
        Container(
          height: 300,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 14,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final Materi materi = materiList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>
                      DetailMateriScreen(materi: materi),
                    ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 7,
                      top: 2,
                    ),
                    child: Container(
                      child: MateriCard(
                        listMateri: materiList[index],
                      ),
                    ),
                  ),
                );
              },
              itemCount: materiList.length,
            ),
          ),
        ),
      ],
    );
  }
}
