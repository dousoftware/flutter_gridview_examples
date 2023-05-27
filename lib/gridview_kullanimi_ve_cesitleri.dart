import 'package:flutter/material.dart';

class GridViewKullanimiVeCesitleri extends StatelessWidget {
  const GridViewKullanimiVeCesitleri({super.key});

  @override
  Widget build(BuildContext context) {
    return gridviewBuilderOrnegi();
  }

  GridView gridviewBuilderOrnegi() {
    return GridView.builder(
      // eleman sayısı
      itemCount: 100,
      // elemanlara her yerden 5 oranında boşluk ver
      padding: const EdgeInsets.all(5),
      // yan yana eleman sayısı
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          alignment: Alignment.center,
          color: Colors.teal[100 * ((index + 1) % 8)],
          child: const Text("GridView Örneği"),
        );
      });
  }

  GridView gridviewExtentOrnegi() {
    return GridView.extent(
      // reverse: en son elemanı en başa yazmayı sağlar
      // scroll yönünü ayarlar
      scrollDirection: Axis.vertical,
      // maxCrossAxisExtent: her bir elemanın maxsimum genişliği
      maxCrossAxisExtent: 150,
      // crossAxisSpacing: soldan sağa doğru sütunların arasındaki boşluk miktarı
      crossAxisSpacing: 5,
      // mainAxisSpacing: yukarıdan aşağı sütunlar arasındaki boşluk miktarı
      mainAxisSpacing: 5,
      // her bir elemanın çevresine verilen boşluk miktarı
      padding: const EdgeInsets.all(10),
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        )
      ],
    );
  }

  GridView gridviewCountOrnegi() {
    return GridView.count(
      // reverse: en son elemanı en başa yazmayı sağlar
      // scroll yönünü ayarlar
      scrollDirection: Axis.horizontal,
      // crossAxisCount: soldan sağa kaç tane eleman konulacağını belirtiyoruz.
      crossAxisCount: 3,
      // crossAxisSpacing: soldan sağa doğru sütunların arasındaki boşluk miktarı
      crossAxisSpacing: 5,
      // mainAxisSpacing: yukarıdan aşağı sütunlar arasındaki boşluk miktarı
      mainAxisSpacing: 5,
      // her bir elemanın çevresine verilen boşluk miktarı
      padding: const EdgeInsets.all(10),
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: const Text("GridView Örneği"),
        )
      ],
    );
  }
}
