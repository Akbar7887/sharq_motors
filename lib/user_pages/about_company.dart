import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/ui.dart';
import '../provider/simle_provider.dart';

class AboutCompany extends StatelessWidget {
  const AboutCompany({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              child: TabBar(
                  labelStyle:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                  tabs: [
                    Tab(
                      text: Ui.tab[context.watch<SimpleProvider>().getuzru],
                    ),
                    Tab(
                      text: Ui.sertifikat[context.watch<SimpleProvider>().getuzru],
                    ),
                  ]),
            ),
            Expanded(
                child: TabBarView(children: [about(context), sertificete()]))
          ],
        ));
  }

  Widget about(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [

      ],
    );

    //ListBody(
    //   children: [
    //     Text(
    //         " ")
    //   ],
    // )
  }

  Widget sertificete() {
    return ListView(
      children: [
        Image.asset("assets/images/ser1.jpg"),
        Image.asset("assets/images/ser2.jpg"),
        Image.asset("assets/images/ser3.jpg"),
        Image.asset("assets/images/ser4.jpg"),
      ],
    );
  }
}
