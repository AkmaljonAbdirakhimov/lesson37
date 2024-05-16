import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScrollsPage extends StatefulWidget {
  const ScrollsPage({super.key});

  @override
  State<ScrollsPage> createState() => _ScrollsPageState();
}

class _ScrollsPageState extends State<ScrollsPage> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Scrolls Page"),
        actions: [
          IconButton(
            onPressed: () {
              // print(scrollController.offset);
              scrollController.animateTo(
                0,
                duration: Duration(seconds: 1),
                curve: Curves.easeInOut,
              );
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              // shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 50,
              itemBuilder: (ctx, index) {
                return GridTile(
                    header: const GridTileBar(
                      leading: CircleAvatar(),
                      title: Text("Salom"),
                      subtitle: Text("Salom 2"),
                    ),
                    footer: const GridTileBar(
                      leading: CircleAvatar(),
                      title: Text("Salom"),
                      subtitle: Text("Salom 2"),
                    ),
                    child: Container(
                      color: Colors.blue,
                    ));
              },
            ),
          ),
        ],
      ),

      // GridView(
      //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //     maxCrossAxisExtent: 200,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //   ),
      //   // const SliverGridDelegateWithFixedCrossAxisCount(
      //   //   crossAxisCount: 4,
      //   //   crossAxisSpacing: 10,
      //   //   mainAxisSpacing: 10,
      //   //   childAspectRatio: 3 / 4,
      //   // ),
      //   children: [
      //     Container(
      //       width: 300,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       width: 200,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: 300,
      //       color: Colors.green,
      //     ),
      //     Container(
      //       height: 300,
      //       color: Colors.orange,
      //     ),
      //     Container(
      //       width: 300,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       width: 200,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: 300,
      //       color: Colors.green,
      //     ),
      //     Container(
      //       height: 300,
      //       color: Colors.orange,
      //     ),
      //     Container(
      //       width: 300,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       width: 200,
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: 300,
      //       color: Colors.green,
      //     ),
      //     Container(
      //       height: 300,
      //       color: Colors.orange,
      //     ),
      //   ],
      // ),

      // ListView.separated(
      //   itemCount: 50,
      //   separatorBuilder: (context, index) {
      //     return const Icon(
      //       Icons.star,
      //       color: Colors.amber,
      //     );
      //   },
      //   itemBuilder: (ctx, index) {
      //     Color rang = Colors.amber;
      //     if (index < 10) {
      //       rang = Colors.blue;
      //     } else if (index < 20) {
      //       rang = Colors.red;
      //     } else if (index < 30) {
      //       rang = Colors.green;
      //     }
      //     return Card(
      //       color: rang,
      //       child: ListTile(
      //         leading: const CircleAvatar(),
      //         title: Text("Salom $index"),
      //         subtitle: const Text("+998 90 123 45 67"),
      //         trailing: Row(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.edit,
      //               ),
      //             ),
      //             IconButton(
      //               onPressed: () {},
      //               icon: const Icon(
      //                 Icons.delete,
      //               ),
      //             )
      //           ],
      //         ),
      //       ),
      //     );
      //   },
      // ),

      // ListView.builder(
      //   itemCount: 50,
      //   itemBuilder: (ctx, index) {
      //     Color rang = Colors.amber;
      //     if (index < 10) {
      //       rang = Colors.blue;
      //     } else if (index < 20) {
      //       rang = Colors.red;
      //     } else if (index < 30) {
      //       rang = Colors.green;
      //     }
      //     print(index);
      //     return Column(
      //       children: [
      //         Card(
      //           color: rang,
      //           child: Padding(
      //             padding: const EdgeInsets.all(20.0),
      //             child: Row(
      //               children: [
      //                 Text(
      //                   "Salom $index",
      //                   style: const TextStyle(fontSize: 20),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         Icon(
      //           Icons.star,
      //           color: Colors.amber,
      //         )
      //       ],
      //     );
      //   },
      // ),

      // ListView(
      //   padding: const EdgeInsets.all(20),
      //   itemExtent: 200,
      //   children: [
      //     ...List.generate(25, (index) {
      //       print(index);
      //       return Card(
      //         color: Colors.amber,
      //         child: Padding(
      //           padding: const EdgeInsets.all(20.0),
      //           child: Row(
      //             children: [
      //               Text(
      //                 "Salom $index",
      //                 style: const TextStyle(fontSize: 20),
      //               ),
      //             ],
      //           ),
      //         ),
      //       );
      //     })
      //   ],
      // ),

      // SingleChildScrollView(
      //   // reverse: false,
      //   padding: const EdgeInsets.all(20),
      //   physics: const BouncingScrollPhysics(),
      //   controller: scrollController,
      //   child: Column(
      //     children: [
      //       ...List.generate(25, (index) {
      //         return Card(
      //           color: Colors.amber,
      //           child: Padding(
      //             padding: const EdgeInsets.all(20.0),
      //             child: Row(
      //               children: [
      //                 Text(
      //                   "Salom $index",
      //                   style: const TextStyle(fontSize: 20),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         );
      //       })
      //     ],
      //   ),
      // ),
    );
  }
}
