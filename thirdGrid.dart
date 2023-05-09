import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdGrid extends StatefulWidget {
  const ThirdGrid({Key? key}) : super(key: key);

  @override
  State<ThirdGrid> createState() => _ThirdGridState();
}

class _ThirdGridState extends State<ThirdGrid> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildThirdCard(context),
        const SizedBox(width:20),
        _buildThirdCard2(context)
      ],
    );
  }

  Widget _buildThirdCard(BuildContext context) {
    return Card(
        color: Colors.greenAccent,
        elevation: 0,
        margin: const EdgeInsets.all(0),
        child: Container(
          padding: const EdgeInsets.all(16),
          height: MediaQuery.of(context).size.height * 0.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        color: Colors.greenAccent,
                        margin: const EdgeInsets.all(8),
                        child: Container(
                          alignment: Alignment.center,
                          child: const Text('Card 1'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        color: Colors.greenAccent,
                        margin: const EdgeInsets.all(8),
                        child: Container(
                          alignment: Alignment.center,
                          child:
                          const Text('Card 2'),
                        ),
                      ),
                    ),
                    Expanded(
                      child:
                      Card(
                        color:
                        Colors.greenAccent,
                        margin:
                        const EdgeInsets.all(8),
                        child:
                        Container(alignment:
                        Alignment.center,
                          child:
                          const Text('Card 3'),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
  }

 Widget _buildThirdCard2(BuildContext context) {
    return  Card(
        color: Colors.greenAccent,
        elevation: 0,
        margin: const EdgeInsets.all(0),
   child: Container(
    padding: const EdgeInsets.all(16),
   height: MediaQuery.of(context).size.height * 0.4,
      child: const ListTile(
        leading: Text('About'),
        title: Center(child: SingleChildScrollView(child: Text('Lorem ipsum dolor sit amet. Aut harum facilis sed modi molestias qui aliquam aspernatur qui excepturi facere non eveniet ullam est minima atque et voluptas suscipit. Rem dolores eligendi rem iure architecto aut rerum totam.'))),
        //subtitle: Center(child: Text('Software Engineer')),
        trailing: Text('Resume'),
      ),
    ),
    );
 }
}
