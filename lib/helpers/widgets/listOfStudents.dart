import 'package:flutter/material.dart';

import 'apptext.dart';

class ListOfStudents extends StatefulWidget {
  const ListOfStudents({super.key});

  @override
  State<ListOfStudents> createState() => _ListOfStudentsState();
}

class _ListOfStudentsState extends State<ListOfStudents> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 600,
        margin: const EdgeInsets.only(top: 300, left: 10, right: 10),
        child: ListView.builder(
            itemCount: 10,
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, index) {
              return Card(
                margin:const EdgeInsets.all(0.8),
                child: ListTile(
                  tileColor: Colors.white,
                  onTap: () {},
                  trailing: Transform.scale(
                    scale: 2.4,
                    child: Checkbox(
                      shape:const CircleBorder(),
                      value: false,
                      onChanged: (bool? value) {},),
                  ),
                  title: Apptext(text: "Anthony Mark"),
                  subtitle: Apptext(
                    text: "8/7, Jackson Apartments 24th lane, South Avenue",islight: true,),
                ),
              );
            }),
      ),
    );
  }
}
