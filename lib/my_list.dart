import 'package:flutter/material.dart';
import 'package:list_view_dummy/data/data.dart';

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  List<DummyData> dummies = [
    DummyData(
        name: "코로나 19",
        content: "확진현황 및 백신접종",
        icon: Icon(Icons.language_sharp,size: 35,),),
    DummyData(
        name: "선별 진료소",
        content: "내주변 진료소 찾기",
        icon: Icon(
          Icons.location_on_rounded,
          color: Colors.red,size: 35,
        )),
    DummyData(
      name: "코로나19 팩트체크",
      content: "백신 정보 팩트는?",
      icon: Icon(
        Icons.home,size: 35,
        color: Colors.black,
      ),
    ),
    DummyData(
      name: "예방접종센터",
      content: "내 주변 센터 찾기",
      icon: Icon(
        Icons.add_box_rounded,size: 35,
        color: Colors.blue,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[600],
        elevation: 0.0,
        centerTitle: true,
        title: Text("코로나 19 정보 센터"),
      ),
      body: Container(
        child: ListView.separated(
            itemBuilder: (ctx, idx) {
              return Container(
                child: ListTile(
                  leading: dummies[idx].icon,
                  title: Text(dummies[idx].name!),
                  subtitle: Text(dummies[idx].content!),
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(
                  thickness: 1,endIndent: 20,indent: 20,
                ),
            itemCount: dummies.length),
      ),
    );
  }
}
