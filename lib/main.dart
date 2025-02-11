
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast(){
  Fluttertoast.showToast(
    msg: "This is Center Short Toast",
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    backgroundColor:Colors.redAccent,
    textColor: Colors.red,
    fontSize:16.0,);
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: 3, child:
      Scaffold(
        appBar: AppBar(
          title: const Text("TapBar"),
          bottom: const TabBar(tabs:
          [
            Tab(icon: Icon(Icons.list), text: "List"),
            Tab(icon: Icon(Icons.grid_on), text: "Grid"),
            Tab(icon: Icon(Icons.add_a_photo_sharp), text: "Card"),
          ],
          ),
        ),
        body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 20, // Define the number of items
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Item $index'),
                  );
                },
              ),

        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: 6,
    itemBuilder: (context, index) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.0),
          image: DecorationImage(image: NetworkImage("https://img.freepik.com/free-psd/pink-echinacea-flower-blossom-petals-nature-beauty_84443-37126.jpg?t=st=1738786822~exp=1738790422~hmac=ec5fdf6f151a0c2387794fecaaa4286a24c769761efc9086fb80207e1b2645fb&w=1380"),
          fit: BoxFit.cover,
          ),
        ),
      );
    },
      ),
      ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: UserAccountsDrawerHeader(
                accountName: const Text("Saltosh"),
                accountEmail: const Text("kayvi.243@gmail.com"),
                currentAccountPicture: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle, color: Colors.red),
                ),
              ),
              ),
              const ListTile(
                title: Text("About myself"),
                leading: Icon(Icons.account_box),
              ),
              const ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
              ),
            ],
          ),
        ),
      )),
    );
  }

  Widget buildCard(){
    return Center(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.yellow,
          child: const Column(
            children: [
              ListTile(
                leading: Icon(Icons.album,
                  size: 50,
                ),
                title: Text("Saltosh"),
                subtitle: Text( "smth"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                  onPressed: showToast, child: Text("Button bir")),
                  ElevatedButton(
                      onPressed: null, child: Text("Button eki"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


