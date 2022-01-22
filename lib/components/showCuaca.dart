import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_dedy_priyatna/components/texContainer.dart';
import 'package:uas_dedy_priyatna/controller/CuacaController.dart';

class ShowCuaca extends StatefulWidget {
  const ShowCuaca({Key? key}) : super(key: key);

  @override
  _ShowCuacaState createState() => _ShowCuacaState();
}

class _ShowCuacaState extends State<ShowCuaca> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CuacaController>(
        init: CuacaController(),
        builder: (data) {
          if (data.cuaca.isNull) {
            return Text("Tidak Ada data");
          } else {
            return Container(
                child: Column(
              children: [
                Text(
                  data.cuaca!.name!,
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                // Container(
                //   child: ListView.builder(
                //       scrollDirection: Axis.vertical,
                //       itemCount: data.cuaca!.weather!.length,
                //       itemBuilder: (contex, index) {
                //         return Image.network(
                //             "http://openweathermap.org/img/wn/${data.cuaca!.weather![index].icon}@2x.png");
                //       }),
                // )
                for (var item in data.cuaca!.weather!)
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Image.network(
                      "http://openweathermap.org/img/wn/${item.icon}@2x.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                Text(data.cuaca!.weather![0].description!),
                SizedBox(height: 30),
                TextContainer(
                    title: "Suhu",
                    value: data.cuaca!.main!.temp.toString() + " F"),
                TextContainer(
                    title: "Kecepatan Angin",
                    value: data.cuaca!.wind!.speed.toString() + " Km/Jam"),
                TextContainer(
                    title: "Latitude",
                    value: data.cuaca!.coord!.lon.toString()),
                TextContainer(
                    title: "Longitude",
                    value: data.cuaca!.coord!.lat.toString()),
              ],
            ));
          }
        });
  }
}
