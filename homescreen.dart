import 'dart:convert';

import 'package:assingment/secondGrid.dart';
import 'package:assingment/thirdGrid.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;
  late String jsonStr = "";

  @override
  void initState() {
    readJsonFile();
    _scrollController =ScrollController();
    super.initState();
  }
@override
  void dispose(){
    _scrollController.dispose();
    super.dispose();
}
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("PortFolio")),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("Images/backgroundImage.jpg"),
          fit: BoxFit.cover,
        )),
        child: SingleChildScrollView(
controller: _scrollController,
          child: Column(
            children: [
              SecondGrid(),
              buildCards(),
              Container(child: _buildContainers()),
              Container(
                height: 110, // set a fixed height for the container
                child: buildCardList(context),
              ),
              SizedBox(height: 10),
              Container(child: ThirdGrid()),
            ],
          ),
        ),
      ),
    );
  }

  Future readJsonFile() async {
    String myString =
        await DefaultAssetBundle.of(context).loadString("assets/cards.json");
    setState(() {
      jsonStr = myString;
    });

    //return myCards;
  }

  Widget _buildContainers() {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.5,
      child: ListView(
        physics: BouncingScrollPhysics(), // Add this line
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Card(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.greenAccent,
              ),
              child: Center(
                child: ListTile(
                  title: Text("2+", style: TextStyle(fontSize: 15)),
                  subtitle: Text(jsonStr.toString(),
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
          Card(
            child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.greenAccent,
                ),
                child: const Center(
                  child: ListTile(
                      title: Text("41+", style: TextStyle(fontSize: 20)),
                      subtitle: Text("Handled Projects",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold))),
                )),
          ),
          Card(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.greenAccent,
              ),
              child: const Center(
                  child: ListTile(
                      title: Text("54", style: TextStyle(fontSize: 15)),
                      subtitle: Text("Clients",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)))),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCardList(BuildContext context) {
    return Card(
      color: Colors.greenAccent,
      elevation: 0,
      margin: const EdgeInsets.all(0),
      child: Container(
        padding: const EdgeInsets.all(16),
        height: MediaQuery.of(context).size.height * 0.2,
        child: Stack(
          // Wrap Row with Stack
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: Column(
                      // Wrap Text widgets inside Column
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Bring Your Ideas',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                        Text('To Life Through',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        Text('Ui Design',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              // Position ElevatedButton to bottom right corner
              bottom: 0,
              right: 0,
              child: ElevatedButton(
                child: const Text('Hire me'),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCards() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
          child: Container(
            // width: 600,
            decoration: BoxDecoration(
                color: Colors.white24, borderRadius: BorderRadius.circular(10)),
            child: const ListTile(
              leading: Text(
                "Name",
                style: TextStyle(fontSize: 10,
                    color: Colors.black),
              ),
              trailing: Text("Devshi_deno",
                  style: TextStyle(fontSize: 10, color: Colors.black)),
            ),
          ),
        ),
        Card(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white24, borderRadius: BorderRadius.circular(10)),
            child: const ListTile(
              leading: Text(
                "Based",
                style: TextStyle(fontSize: 10),
              ),
              trailing: Text("Flutter",
                  style: TextStyle(fontSize: 10, color: Colors.black)),
            ),
          ),
        ),
        Card(
          child: Container(
            height: 50,
            //  width: 400,
            decoration: BoxDecoration(
                color: Colors.white24, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 25,
                  width: 25,
                  child: Icon(
                    FontAwesomeIcons.twitter,
                    size: 20,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  height: 25,
                  width: 25,
                  child: Icon(
                    FontAwesomeIcons.instagram,
                    size: 20,
                    color: Colors.redAccent,
                  ),
                ),
                const SizedBox(
                  height: 25,
                  width: 25,
                  child: Icon(
                    FontAwesomeIcons.google,
                    size: 20,
                    color: Colors.greenAccent,
                  ),
                ),
                const SizedBox(
                  height: 25,
                  width: 25,
                  child: Icon(
                    FontAwesomeIcons.linkedin,
                    size: 20,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
