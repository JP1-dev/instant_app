import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Feed extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.red,
      child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(height: 20),
          Center(
            child: Container(
                height: MediaQuery.of(context).size.height/2 ,
                width: MediaQuery.of(context).size.width/1.25,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                        Radius.circular(10)
                    )
                ),
              child: Center(
                child: Image.network("https://assets.t3n.sc/news/wp-content/uploads/2019/08/quantencomputing.jpg?auto=format&h=&ixlib=php-3.3.1&w=")

                /*CachedNetworkImage(
                  imageUrl: "https://lh3.googleusercontent.com/proxy/4ZYkvBiW8hHLUnwoqVSdgg80lAYbzZh2Bfn0b3C0POSGQopMnbaioTZo0ZAUib-jUQLxyAPpC55c4VhB5sUK-a2DhoGP3WTmodynC-JGimJn3i3erJlE0xGAAEDuvUzZQRNKaI1YX0AkHDqB2dfp2Ooeu4PfGc0y0q8o9whCNGUun_9Szwt4HQ",
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),*/
              ),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Container(
                height: MediaQuery.of(context).size.height/2 ,
                width: MediaQuery.of(context).size.width/1.25,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                        Radius.circular(10)
                    )
                ),
              child: Center(
                child: Image.network("https://assets.t3n.sc/news/wp-content/uploads/2019/08/quantencomputing.jpg?auto=format&h=&ixlib=php-3.3.1&w="),
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Container(
                height: MediaQuery.of(context).size.height/2 ,
                width: MediaQuery.of(context).size.width/1.25,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                        Radius.circular(10)
                    )
                )
            ),
          )
        ],
      )
    );
  }
}
