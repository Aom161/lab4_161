import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  String foodRadio = "";
  bool starEgg = true;
  bool omelette = true;
  bool meat = true;
  bool vegetable = true;
  bool Boiledeggs = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("วันนี้...กินไรดี"),
        backgroundColor: Color.fromARGB(255, 191, 243, 123),
      ),
      body: Column(
        children: [
          RadioListTile.adaptive(
            activeColor: Colors.black,
            selected: false,
            selectedTileColor: Color.fromARGB(115, 214, 240, 123),
            title: Text("ก๋วยเตี๋ยวต้มยำ"),
            subtitle: Text("50 บาท"),
            value: "ก๋วยเตี๋ยวต้มยำ",
            groupValue: foodRadio,
            onChanged: (value) {
              setState(() {
                foodRadio = value!;
              });

              print(foodRadio);
            },
          ),
          RadioListTile.adaptive(
            activeColor: Colors.black,
            selected: false,
            selectedTileColor: Color.fromARGB(115, 3, 165, 240),
            title: Text("ข้าวผัดรวมมิตร"),
            subtitle: Text("60 บาท"),
            value: "ข้าวผ้ดรวมมิตร",
            groupValue: foodRadio,
            onChanged: (value) {
              setState(() {
                foodRadio = value!;
              });

              print(foodRadio);
            },
          ),
          RadioListTile.adaptive(
            activeColor: Colors.black,
            selected: false,
            selectedTileColor: Color.fromARGB(115, 3, 165, 240),
            title: Text("เกาเหลา"),
            subtitle: Text("60 บาท"),
            value: "เกาเหลา",
            groupValue: foodRadio,
            onChanged: (value) {
              setState(() {
                foodRadio = value!;
              });

              print(foodRadio);
            },
          ),
          RadioListTile.adaptive(
            activeColor: Colors.black,
            selected: false,
            selectedTileColor: Color.fromARGB(115, 3, 165, 240),
            title: Text("ก๋วยเตี๋ยวเย็นตาโฟต้มยำ"),
            subtitle: Text("60 บาท"),
            value: "ก๋วยเตี๋ยวเย็นตาโฟต้มยำ",
            groupValue: foodRadio,
            onChanged: (value) {
              setState(() {
                foodRadio = value!;
              });

              print(foodRadio);
            },
          ),
          RadioListTile.adaptive(
            activeColor: Colors.black,
            selected: false,
            selectedTileColor: Color.fromARGB(115, 3, 165, 240),
            title: Text("ข้าวผัดต้มยำ"),
            subtitle: Text("69 บาท"),
            value: "ข้าวผัดต้มยำ",
            groupValue: foodRadio,
            onChanged: (value) {
              setState(() {
                foodRadio = value!;
              });

              print(foodRadio);
            },
          ),
          Divider(),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text("ไข่ดาว"),
            subtitle: Text("+10 บาท"),
            value: starEgg,
            onChanged: (value) {
              setState(() {
                starEgg = !starEgg;
              });
            },
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text("ไข่เจียว"),
            subtitle: Text("+15 บาท"),
            value: omelette,
            onChanged: (value) {
              setState(() {
                omelette = !omelette;
              });
            },
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text("ไข่ต้ม"),
            subtitle: Text("+10 บาท"),
            value: Boiledeggs,
            onChanged: (value) {
              setState(() {
                Boiledeggs = !Boiledeggs;
              });
            },
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text("เนื้อสัตว์"),
            subtitle: Text("+25 บาท"),
            value: meat,
            onChanged: (value) {
              setState(() {
                meat = !meat;
              });
            },
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text("ไม่ผัก"),
            subtitle: Text("0 บาท"),
            value: vegetable,
            onChanged: (value) {
              setState(() {
                vegetable = !vegetable;
              });
            },
          ),
        ], //children
      ),
    );
  }
}
