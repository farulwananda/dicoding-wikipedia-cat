import 'package:dicoding_flutter_wicat/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_flutter_wicat/CatList.dart';
import 'package:dicoding_flutter_wicat/DetailWiki.dart';


class WikiPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFEDD5),
      appBar: AppBar(
        backgroundColor: Color(0xffF59E0B),
        title: Text('Wikipedia Cat'),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => LoginPage()));
          }, 
          icon: Icon(Icons.logout_outlined))
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final WikipediaCat cat = WikiCatList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(cat: cat);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(cat.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            cat.name,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(cat.location),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: WikiCatList.length,
      ),
    );
  }
}