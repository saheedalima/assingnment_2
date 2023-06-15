import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        useInheritedMediaQuery: true,
        home: Hotel_home(),
      ), // Wrap your app
    ),
  );
}

class Hotel_home extends StatelessWidget {
  var icons=[Icons.hotel,Icons.restaurant,Icons.local_cafe];
  var texts=["Hotel","Restaurant","Cafe"];
  var colors=[Colors.red,Colors.blue,Colors.yellow,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 230,
            color: Colors.lightBlueAccent,
            child: Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: ListTile(
                      leading: Icon(Icons.menu,color: Colors.white,),
                      trailing: Icon(Icons.favorite_border,color: Colors.white,),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30,),
                    child: Text(
                      "Type your Location",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 7),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: const TextField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          iconColor: Colors.white,
                          hintText: "Bouddha , Katmandu",
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: List.generate(3, (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: colors[index],
                      borderRadius: BorderRadius.circular(10)
                    ),
                    height: 90,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(icons[index],color: Colors.white,size: 18,),
                        Text(texts[index],style: const TextStyle(color: Colors.white,fontSize: 18),),
                      ],
                    ),
                  ),
                ),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: const [BoxShadow(
                  color: Colors.white70,
                blurRadius: 5.0,
                offset: Offset(
                  2.0,
                  2.0,
                ))],
                borderRadius: BorderRadius.circular(10),
                // image: DecorationImage(image: AssetImage("assets/icons/img_60.png"),fit: BoxFit.cover)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/icons/img_60.png",fit: BoxFit.cover,),
                  const Padding(
                    padding: EdgeInsets.only(top: 10,bottom: 7),
                    child: Text("Awesome room near Bouddha",
                      textAlign: TextAlign.start,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  const Text("Bouddha , kathmandu",textAlign: TextAlign.start,),
                  const SizedBox(height: 5,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.star,color: Colors.green,),
                      Icon(Icons.star,color: Colors.green,),
                      Icon(Icons.star,color: Colors.green,),
                      Icon(Icons.star,color: Colors.green,),
                      Icon(Icons.star,color: Colors.green,),
                      SizedBox(width: 10,),
                      Text("(220 reviews)",style: TextStyle(color: Colors.black),),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
