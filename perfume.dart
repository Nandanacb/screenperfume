import 'package:flutter/material.dart';

class PerfumeExample extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    List<Map> MyPerfumeList=[
      {
        "image":"assets/images/perfume1.jpeg",
        "name":"The One For Men",
        "price":"ASD 510.00",
        "price1":"ASD 339.00",
      },
       {
        "image":"assets/images/perfume2.jpeg",
        "name":"Acqua Di Gio Profondo",
        "price":"ASD 465.00",
        "price1":"ASD 339.00",
       },
       {
        "image":"assets/images/perfume3.jpeg",
        "name":"Sauvage", 
        "price":"ASD 590.00",
        "price1":"ASD 450.00",
       },
       {

        "image":"assets/images/perfume4.jpeg",
        "name":"Grain de Poudre",
        "price":"ASD 995.00",
        "price1":"ASD 585.00",
       },
    ];
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("ZAHAAR"),
        centerTitle: true,
        actions: [
          ImageIcon(AssetImage("assets/icons/icon1.png")),
          SizedBox(width: 10,),
          ImageIcon(AssetImage("assets/icons/shopping.png")),

        ],
      ),
      body:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 0,mainAxisSpacing: 0,childAspectRatio: .7),
       itemCount: MyPerfumeList.length,
       itemBuilder: (context,index){
        return Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image:AssetImage(MyPerfumeList[index]["image"]))),
                height: 150,
                width: double.infinity,
          
              ),
              SizedBox(height: 15,),
              Text(MyPerfumeList[index]["name"]),
                
                SizedBox(height: 10,),
                Text(
                  
                  MyPerfumeList[index]["price"],
                  style:
                  TextStyle(decoration: TextDecoration.lineThrough),),
                  SizedBox(height: 10,),
          
                  Text(MyPerfumeList[index]["price1"],
                    style: TextStyle(color: Colors.red),
                  ),
          
            ],
          ),
        );
       })
      
    );
  }
}