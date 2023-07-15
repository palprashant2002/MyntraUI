import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:myntraui/page2.dart';

class Contact {
  final String name;
  Contact(this.name);
}

List<String> label = [
  "Categories",
  "Men",
  "Women",
  "Kids",
  "Footwear",
  "Beauty",
  "Home",
  "Jwellery",
  "Gift Card",
  "Trend",
  "Studio"
];
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      // home: Home2(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final contacts = [
    Contact("sahar"),
    Contact("Joe"),
    Contact("fo"),
    Contact("Fifo"),
    Contact("Moshe"),
  ];

  var _displayAll = false;

  List<Widget> imgview = [
    Container(
        width: 395,
        child: Image(
            image: AssetImage("assets/images/offer1.jpg"), fit: BoxFit.cover)),
    Container(
        width: 400,
        child: Image(
            image: AssetImage("assets/images/offer2.jpg"), fit: BoxFit.cover)),
    Container(
        child: Image(
            image: AssetImage("assets/images/offer3.jpg"), fit: BoxFit.cover)),
    Container(
        child: Image(
            image: AssetImage("assets/images/offer4.jpg"), fit: BoxFit.cover)),
    Container(
        child: Image(
            image: AssetImage("assets/images/offer5.jpg"), fit: BoxFit.cover)),
  ];

  CarouselController _carouselController = CarouselController();
  var currentImg = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image(image: AssetImage("assets/images/logo.png")),
        backgroundColor: Colors.white,
        title: Text('Myntra'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.work_outline_outlined),
            onPressed: () {},
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Page2(),));
        },
        child: Text("Next Page",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),

      ),
      // drawer: Dra,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 11,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(6),
                    child: Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                image: AssetImage("assets/images/cat" +
                                    (index).toString() +
                                    ".jpg"),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Text(label[index])
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.pink[100],
              child: Image(image: AssetImage("assets/images/flat0.jpg")),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: double.infinity,
              child: CarouselSlider(
                  carouselController: _carouselController,
                  options: CarouselOptions(
                    viewportFraction: 2,
                    height: 200,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentImg = index;
                      });
                    },
                  ),
                  items: imgview),
            ),
            SizedBox(
              child: DotsIndicator(
                dotsCount: imgview.length,
                axis: Axis.horizontal,
                position: currentImg,
                decorator: DotsDecorator(
                  activeColor: Colors.pink,
                ),
              ),
            ),
            buildRow("assets/images/img", 10, ".jpeg", 1),
            SizedBox(
              child: Text(
                "ALL TIME FAVOURITE",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
              ),
            ),
            SizedBox(
              height: 970,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 5 / 6),
                itemCount: 8,
                itemBuilder: (
                  context,
                  index,
                ) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 80,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage("assets/images/cat" +
                                (index + 1).toString() +
                                ".jpg"),
                            fit: BoxFit.cover,
                          )),
                      child: Text(
                        "Under " + (1099 - (100 * index)).toString(),
                        style: TextStyle(
                            backgroundColor: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
                margin: EdgeInsets.all(8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "HIGHLIGHTS OF THE DAY",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            buildRow("assets/images/img", 10, ".jpeg", 2),
            Container(
                margin: EdgeInsets.all(8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "FEATURED BRAND",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            buildRow("assets/images/img", 10, ".jpeg", 3),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.pink[100],
              child: Image(
                image: AssetImage("assets/images/offer6.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
                margin: EdgeInsets.all(8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "TRENDING STYLE",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            buildRow("assets/images/img", 10, ".jpeg", 0)
          ],
        ),
      ),
    );
  }
}

Widget buildRow(String imgPath, int imgcount, String ext, int step) {
  return SizedBox(
    height: 200,
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: imgcount,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(6),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                          imgPath + ((10 * step) + index + 1).toString() + ext),
                      fit: BoxFit.cover,
                    )),
              ),
            ],
          ),
        );
      },
    ),
  );
}
