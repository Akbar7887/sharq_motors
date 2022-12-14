import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/ui.dart';
import '../provider/section_provider.dart';
import '../provider/simle_provider.dart';

class DrawerHome extends StatelessWidget {
  const DrawerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        // elevation: 0,
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            SizedBox(
                height: 220,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    // borderRadius: BorderRadius.circular(20),
                    // border: Border.all(color: Colors.white, width: 0.5)),
                  ),
                  child: Container(
                    // color: Colors.white,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          "assets/images/logo.png",
                          width: 100,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            "${Ui.title[context.watch<SimpleProvider>().getuzru]}",
                            style: TextStyle(
                                fontFamily: Ui.textstyle,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: 15),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            "${Ui.fullname}",
                            style: TextStyle(
                                fontFamily: Ui.textstyle,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontSize: 15),
                          ),
                        ),
                        // Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.phone_android_outlined,
                              size: 20,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            TextButton(
                              onPressed: () {
                                Ui.callNumber();
                              },
                              child: Text(
                                Ui.phone,
                                style: TextStyle(
                                    fontFamily: Ui.textstyle,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                Ui.callInstagram();
                              },
                              icon: Image.asset(
                                'assets/images/Instagram_icon.png',
                                width: 30,
                                height: 30,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Ui.callFacebook();
                              },
                              icon: Icon(
                                Icons.facebook,
                                color: Colors.blue,
                                size: 30,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Ui.callTelegram();
                              },
                              icon: Icon(
                                Icons.telegram,
                                color: Colors.blue,
                                size: 30,
                              ),
                            ),
                            // Text(Ui.telegram)
                          ],
                        )
                      ],
                    ),
                  ),
                ) // decoration: BoxDecoration(color: Colors.yellow),
                ),
            Divider(color: Colors.white),

            ListTile(
                title: InkWell(
              onTap: () {
                context.read<SimpleProvider>().changepage(4);
                Navigator.pop(context);
              },
              child: Text(Ui.tab[context.watch<SimpleProvider>().getuzru]!,
                  style: TextStyle(
                      fontFamily: Ui.textstyle,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 20)),
            )),
            Divider(color: Colors.white),
            ListTile(
              title: InkWell(
                onTap: () {
                  context.read<SectionProvider>().changeSection(null);
                  context.read<SimpleProvider>().changepage(1);
                  // setState(() {
                  //   textnext = Ui.h2[uz_ru]!;
                  // });
                  Navigator.pop(context);
                },
                child: Text(
                    Ui.catalogs[context.watch<SimpleProvider>().getuzru]!,
                    style: TextStyle(
                        fontFamily: Ui.textstyle,
                        fontSize: 20,
                        color: Colors.white)),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            ListTile(
              title: InkWell(
                onTap: () {
                  context.read<SimpleProvider>().changepage(7);
                  Navigator.pop(context);
                },
                child: Text(Ui.news[context.watch<SimpleProvider>().getuzru]!,
                    style: TextStyle(
                      fontFamily: Ui.textstyle,
                      fontSize: 20,
                      color: Colors.white,
                    )),
              ),
            ),
            Divider(color: Colors.white),
            ListTile(
              title: InkWell(
                onTap: () {
                  context.read<SimpleProvider>().changepage(5);
                  Navigator.pop(context);
                },
                child:
                    Text(Ui.adressfix[context.watch<SimpleProvider>().getuzru]!,
                        style: TextStyle(
                          fontFamily: Ui.textstyle,
                          fontSize: 20,
                          color: Colors.white,
                        )),
              ),
            )
          ],
        ));
  }
}
