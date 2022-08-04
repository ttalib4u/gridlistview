import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../utils/data.dart';
import '../models/product.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<Map<String, String>> _popoption = [{'title':"open", 'icon':"A"}, {'title':"add to cart", 'icon':"B"}];

  @override
  Widget build(BuildContext context) {
    List<Product> _list = FakeData().productsList;

    return /*Directionality(
        textDirection: TextDirection.rtl,
        child: */Scaffold(
          appBar: AppBar(
            title: Text('ListView'),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: AnimationLimiter(
                child: ListView.builder(
                    itemCount: _list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return AnimationConfiguration.staggeredList(
                          position: index,
                          duration: Duration(milliseconds: 1000),
                          child: ScaleAnimation(
                              child: FadeInAnimation(
                                  delay: Duration(milliseconds: 100), child: listItem(_list[index])
                              )
                          )
                      );
                    })),
          ),
        )
    //)
    ;
  }

  Widget listItem(Product product) {
    return SizedBox(
      height: 100,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 5.0,
          margin: const EdgeInsets.all(3.0),
          child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  padding: EdgeInsets.all(5),
                  child: Image.asset(product.thumbnail),
                ),

                Container(
                  width: 230,
                  padding: EdgeInsets.fromLTRB(2, 10, 2, 10),//.all(10.0, 0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w800,
                              fontSize: 15
                          ),
                        ),
                        Text(
                          product.description,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ]
                  ),
                ),
                Container(
                    width: 20,
                    padding: EdgeInsets.all(5),
                    child: PopupMenuButton(
                        child: Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 30,
                          margin: EdgeInsets.all(10),

                          child: Icon(Icons.more_vert, color: Colors.black87,),
                        ),
                        itemBuilder: (BuildContext bc) {
                          return _popoption.map((options) => PopupMenuItem(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                    options['icon'].toString() == 'A' ?
                                    Icons.open_in_new : options['icon'].toString() == 'B' ?
                                    Icons.add_shopping_cart : Icons.access_time_filled_rounded
                                ),
                                Text(" " + options['title'].toString()),
                              ],
                            ),
                            value: options,
                            //enabled: extra.contains(snapshot.data[index].pp_ID) ? snapshot.data[index].tp_link != '' ? true : false : false,
                          )).toList();
                        },
                        onSelected: (_) {}
                    )
                ),
              ]
          ),
        ),
    );
  }
}