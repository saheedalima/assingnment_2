import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:readmore/readmore.dart';

class Farmers_Freshzone extends StatelessWidget {
  var images = [
    "assets/icons/img_25.png",
    "assets/icons/img_26.png",
    "assets/icons/img_27.png",
    "assets/icons/img_28.png",
    "assets/icons/img_29.png",
    "assets/icons/img_30.png",
    "assets/icons/img_31.png",
    "assets/icons/img_32.png"
  ];
  var texts = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nutrition charges",
    "Packed Flavors",
    "Offer",
    "Offer"
  ];
  var images_2=["assets/icons/img_34.png","assets/icons/img_35.png","assets/icons/img_36.png","assets/icons/img_37.png"];
  var texts_2=["Carrot","Njalipoovan-semi ripe","Brocolli Florets 200gm","Potato"];
  var texts_3=["34","34.5","99","23"];
  var texts_4=["0.50 kg","0.50 kg","100 NOS","0.50 kg"];
  var listimages=["assets/icons/img_14.png","assets/icons/img_15.png","assets/icons/img_16.png",
              "assets/icons/img_17.png","assets/icons/img_9.png","assets/icons/img_10.png",
               "assets/icons/img_11.png","assets/icons/img_12.png","assets/icons/img_13.png",
               "assets/icons/img_6.png"];
  var listtexts=["Control Blood Pressure,the rl","Five reasons why Brocolli shou",
             "Five tests to prevent fever","Human repsitory","Rain drop","How to prtect trees",
             "How to find human sicks","how to cheack whether condition","Birds","Animals"];
  var listtexts_2=["5 months ago","5 months ago","6months ago","7 months ago","8 months ago","9 months ago",
             "10 months ago","11 months ago","12 months ago","13 months ago"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: const Text("Farmers Fresh Zone"),
            backgroundColor: Colors.green,
            actions: [
              Row(
                children: const [
                  Icon(Icons.directions),
                  Text("Kochi"),
                  Icon(Icons.arrow_downward),
                ],
              )
            ],
            bottom: AppBar(
              backgroundColor: Colors.green,
              elevation: 0,
              title: Container(
                color: Colors.white,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Search for vegitables and fruits",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.greenAccent[100],
                            shape: StadiumBorder()
                        ),
                        onPressed: () {},
                        child: const Text("Vegetables",style: TextStyle(color: Colors.green),),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent[100],
                            shape: StadiumBorder()
                        ),
                        onPressed: () {},
                        child: const Text("Fruits",style: TextStyle(color: Colors.green),),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent[100],
                            shape: StadiumBorder()
                        ),
                        onPressed: () {},
                        child: const Text("Exotic",style: TextStyle(color: Colors.green),),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent[100],
                          shape: StadiumBorder()
                        ),
                        onPressed: () {},
                        child: const Text("Fresh Cuts",style: TextStyle(color: Colors.green),),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent[100],
                            shape: StadiumBorder()
                        ),
                        onPressed: () {},
                        child: const Text("Vegetables",style: TextStyle(color: Colors.green),),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent[100],
                            shape: StadiumBorder()
                        ),
                        onPressed: () {},
                        child: const Text("Fruits",style: TextStyle(color: Colors.green),),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CarouselSlider(
                    items: [
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/icons/img_22.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/icons/img_21.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/icons/img_23.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/icons/img_24.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/icons/img_22.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/icons/img_21.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      autoPlay: true,
                      viewportFraction: 1,
                      enableInfiniteScroll: true,
                      enlargeCenterPage: true,
                      height: 200,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(17.0),
                child: Container(
                  height: 70,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: const [
                              Icon(
                                Icons.timer,
                                size: 30,
                                color: Colors.green,
                              ),
                              Text("30 min policy"),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: const [
                              Icon(
                                Icons.phone,
                                size: 30,
                                color: Colors.green,
                              ),
                              Text("Tracability"),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: const [
                              Icon(
                                Icons.man,
                                size: 30,
                                color: Colors.green,
                              ),
                              Text("Local Suround"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
               const Padding(
                 padding: EdgeInsets.only(bottom: 10),
                 child: Text(
                  "Shop By Category",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.start,
              ),
               ),
              
              GridView.builder(
                padding:EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 9),
                  itemCount: images.length,
                  itemBuilder: (context, index) {       //indexinu prediction varilla tyepe cheyanam
                    return Column(
                      children: [
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(topRight: Radius.circular(17),
                              topLeft: Radius.circular(17)
                            ),
                            image: DecorationImage(
                              image:AssetImage(images[index],),fit: BoxFit.cover,),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0, // soften the shadow
                               // spreadRadius: 2.0, //extend the shadow
                                offset: Offset(
                                  2.0, // Move to right 5  horizontally
                                  2.0, // Move to bottom 5 Vertically
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0, // soften the shadow
                                offset: Offset(
                                  2.0, // Move to right 5  horizontally
                                  2.0, // Move to bottom 5 Vertically
                                ),
                              )
                            ],
                          ),
                            height: 30,
                            width: double.infinity,
                            child: Center(child: Text(texts[index],style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),))),
                      ],
                    );
                  }),
              Container(
                width: double.infinity,
                child: CarouselSlider(
                    items: [
                      Container(
                        height: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/icons/img_33.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/icons/img_33.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/icons/img_33.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/icons/img_33.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/icons/img_33.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/icons/img_33.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      autoPlay: true,
                      viewportFraction: 1,
                      enableInfiniteScroll: true,
                      enlargeCenterPage: true,
                      height: 100,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: 30,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text("Best Selling Products",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                  ),),
              ),
              Container(
                padding: EdgeInsets.zero,
                width: double.infinity,
                height: 450,
                       child: GridView.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5),itemCount: images_2.length,
                          shrinkWrap: true,
                          itemBuilder: (context,index){
                            return Container(
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(images_2[index],height: 120,width: double.infinity,fit: BoxFit.cover,),
                                    Text(texts_2[index]),
                                    Text(texts_3[index]),
                                    Wrap(
                                      children: [
                                        Text(texts_4[index],textAlign: TextAlign.start,),
                                        SizedBox(width: 60),
                                        ElevatedButton(onPressed: (){}, child: Text("Add"),)
                                      ],
                                    )
                                  ],
                                ),
                            );
                          }),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
                child: Container(
                  height: 100,
                  width: 350,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Container(
                        width: 200,
                         height: 100,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             const ReadMoreText("we are looking towards safe food- which are nutri-Locked and hygienic as well",
                               trimLines: 2,
                                  colorClickableText: Colors.pink,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: 'Show more',
                                  trimExpandedText: 'Show less',
                                 // softWrap: true,
                             ),
                             Padding(
                               padding: const EdgeInsets.only(top: 10,right: 20),
                               child: Wrap(
                                 children: const [
                                   Text("READ MORE ",style: TextStyle(
                                       fontWeight: FontWeight.bold,
                                     fontSize: 20,
                                   ),),
                                   SizedBox(width: 10,),
                                   Icon(Icons.play_arrow,color: Colors.green,),
                                 ],
                               ),
                             )
                           ],
                         ),
                      ),
                      Container(
                          width: 150,
                          height: 100,
                          child: Image.asset("assets/icons/img_13.png",fit: BoxFit.fill,)),
                    ],),
                ),),

              Container(
                height: 30,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text("Our Blog Posts",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(listimages.length, (index) =>
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 8.0,right: 8.0),
                        child: Container(
                          height: 230,
                          width: 200,
                          child: Column(
                            children: [
                              Image.asset(listimages[index],height: 150,width: 200,fit: BoxFit.cover,),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(listtexts[index]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 60),
                                child: Wrap(
                                  children: [
                                    Text(listtexts_2[index]),
                                    Icon(Icons.arrow_right)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                ),
              ),
              Container(
                height: 50,
                width: 100,
                child: const Center(
                  child: Text("VIEW MORE",style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 25,
                  width: double.infinity,
                  child: const Text("What our Customers Say?",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/icons/flutter_icon.png"),
                      ),
                      title: Text("Prince P I",style: TextStyle(color: Colors.green),),
                      subtitle: Text("Online digital marketing buisness"),
                      trailing: Icon(Icons.keyboard_double_arrow_down_rounded,size: 50,),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Business Essay: The act of making one's living by earning money through the process of buying and selling different kinds of products is called business. Business is based on the foundation of profit and loss; thus, the success or failure of a business has a broad spectrum of variations.",
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 50,left: 40,right: 40),
                          child: Text
                            ("This Kochi-based-farm-to fork online market place is connecting farmers directly to customers",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Market places",style: TextStyle(fontSize: 5),),
                        const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text("Your \n story",style: TextStyle(fontSize: 5),),
                        ),   //convert to icon
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset("assets/icons/img_19.png",height: 50,width: 50,),
                        ),
                        Image.asset("assets/icons/img_20.png",height: 50,width: 50,)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text("Get To Know Us",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Wrap(
                        children: const [
                          Text("About Us",style: TextStyle(fontSize: 10),),
                          Padding(
                            padding: EdgeInsets.only(left: 15,right: 15),
                            child: Text("Our Farmers",style: TextStyle(fontSize: 10),),
                          ),
                          Text("Blog",style: TextStyle(fontSize: 10),),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Text("Useful Links",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text("Privacy Policy",style: TextStyle(fontSize: 10),),
                          Text("|",style: TextStyle(fontSize: 10),),
                          Text("Return & refund policy",style: TextStyle(fontSize: 10),),
                          Text("|",style: TextStyle(fontSize: 10),),
                          Text("Terms and condition",style: TextStyle(fontSize: 10),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,left: 40,right: 40,bottom: 15),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.message,size: 25,),
                      Icon(Icons.facebook,size: 25,),
                      Icon(Icons.linked_camera,size: 25,),
                      Icon(Icons.snapchat,size: 25,),
                    ],
                  ),
                ),
              ),
              Container(
                height: 70,
                color: Colors.green,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: const [
                        Text("Cpyright @ 2021 Farmers Fresh Zone.",style: TextStyle(fontSize: 10,color: Colors.white),),
                        Text("All Highlights Reserved, V.2.40.22",style: TextStyle(fontSize: 10,color: Colors.white),),
                      ],
                    ),
                  ),
                ),
              ),
              BottomNavigationBar(items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
                BottomNavigationBarItem(icon: Icon(Icons.camera_alt_rounded),label: "Cart"),
                BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle),label: "Account"),
              ])
            ]),
          ),
        ],
      ),
    );
  }
}
