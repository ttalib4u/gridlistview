import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import '../utils/data.dart';
import '../models/product.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  List<Map<String, String>> _popoption = [{'title':"open", 'icon':"A"}, {'title':"add to cart", 'icon':"B"}];

  @override
  Widget build(BuildContext context) {
    List<Product> _list = FakeData().productsList;

    return /*Directionality(
        textDirection: TextDirection.rtl,
        child: */Scaffold(
          appBar: AppBar(
            title: Text('GridView'),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: AnimationLimiter(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemCount: _list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return AnimationConfiguration.staggeredGrid(
                          columnCount: 2,
                          position: index,
                          duration: Duration(milliseconds: 1000),
                          child: ScaleAnimation(
                              child: FadeInAnimation(
                                  delay: Duration(milliseconds: 100),
                                  child: listItem(_list[index])

                              )
                          )
                      );
                    }
                )
            ),
          ),
        )
    //)
    ;
  }

  Widget listItem(Product product) {
    return SizedBox(
        width: 300,
        height: 400,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 2.0,
          margin: const EdgeInsets.all(3.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0.0),
                  image: DecorationImage(image: AssetImage(product.thumbnail), fit: BoxFit.cover),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      PopupMenuButton(
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 30,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                boxShadow: [ BoxShadow(blurRadius: 4, color: Colors.black45) ],
                                color: Colors.white, shape: BoxShape.circle
                            ),
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
                    ]
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w800,
                          fontSize: 15
                      ),
                    ),
                    /*Text(
                      product.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),*/
                  ]
                ),
              )
            ]
          )
        )
    );
  }
}