import 'package:bangun_datar_kelas_c/page/persegi_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Home Page",
            style: TextStyle(color: Color(0xFF3867AA)),
          ),
          backgroundColor: Colors.green.shade200,
        ),
        body: Column(
            children: [
              Expanded(child:
              Row(
                children: [
                 Expanded(child: InkWell(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPage()));
                     },
                     child: CustomMenu(title: "persegi",imageAsset: "asset/kotak.png"))),
                 Expanded(child: CustomMenu(title: "persegi panjang",imageAsset: "asset/pp.png")),
                ],


              ),
              ),
              Row(
                children: [
                Expanded(child: CustomMenu(title: "segitiga",imageAsset: "asset/segitiga.png")),
                Expanded(child: CustomMenu(title: "lingkaran",imageAsset: "asset/lg.png")),
                ],


              ),







  ]
    ,
    )
    ,
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });
  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
       height: 400,
        margin: EdgeInsets.symmetric(
            horizontal: 16, vertical: 8
        ),
        decoration: BoxDecoration(color: Colors.green.shade100,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imageAsset, height: 100,),

           Text(title, style: TextStyle(color: Colors.white)),




          ],
        )

    );
  }
}
