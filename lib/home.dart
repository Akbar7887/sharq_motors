import 'package:sharq_motors/provider/models_provider.dart';
import 'package:sharq_motors/provider/section_provider.dart';
import 'package:sharq_motors/provider/simle_provider.dart';
import 'package:sharq_motors/user_pages/about_company.dart';
import 'package:sharq_motors/user_pages/adress.dart';
import 'package:sharq_motors/user_pages/customer_form.dart';
import 'package:sharq_motors/user_pages/description_page.dart';
import 'package:sharq_motors/user_pages/first_page.dart';
import 'package:sharq_motors/user_pages/news_page.dart';
import 'package:sharq_motors/user_pages/section_page.dart';
import 'package:sharq_motors/widgets/drawer_home.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:provider/provider.dart';

import 'models/ui.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

_callNumber() async {
  return await FlutterPhoneDirectCaller.callNumber(Ui.phone);
}

class _HomeState extends State<Home> {
  int currentindex = 1;
  Uz_ru uz_ru = Uz_ru.RU;

  Widget? getTitle() {
    if (context.read<SimpleProvider>().getpage == 1 ||
        context.read<SimpleProvider>().getpage > 3) {
      return InkWell(
          onTap: () {
            context.read<SimpleProvider>().changepage(1);
          },
          child: Image.asset(
            'assets/images/logo.png',
            width: 80,
          ));
    } else if (context.read<SimpleProvider>().getpage == 2) {
      return InkWell(
        onTap: () {
          context.read<SimpleProvider>().changepage(1);
        },
        child: Text(
          Ui.choose[context.watch<SimpleProvider>().getuzru]!,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: "Times New Roman",
              fontSize: 22),
        ),
      );
    } else if (context.read<SimpleProvider>().getpage == 3) {
      return InkWell(
        onTap: () {
          context.read<SimpleProvider>().changepage(1);
        },
        child: Text(
          Ui.applyphone[context.watch<SimpleProvider>().getuzru]!,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: "Times New Roman",
              fontSize: 15),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 1,
          // shape: RoundedRectangleBorder(
          //     // side: BorderSide(width: 0.5, color: Colors.black),
          //     borderRadius: BorderRadius.vertical(
          //       bottom: Radius.circular(20.0),
          //     )),
          // centerTitle: true,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              getTitle()!,
              SizedBox(
                width: 5,
              ),
              Container(
                child: Text(
                  "${Ui.title[context.watch<SimpleProvider>().getuzru]}",
                  style: TextStyle(
                      fontFamily: Ui.textstyle,
                      fontWeight: FontWeight.w500,
                      fontSize: 10),
                ),
              ),
            ],
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.end,
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
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Ui.callNumber();
                  },
                  child: Icon(
                    Icons.phone_android_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                TextButton(
                  onPressed: () {
                    _callNumber();
                  },
                  child: Text(
                    Ui.phone,
                    style: TextStyle(
                        fontFamily: Ui.textstyle,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            InkWell(
                onTap: () {
                  setState(() {
                    if (uz_ru == Uz_ru.UZ) {
                      uz_ru = Uz_ru.RU;
                    } else if (uz_ru == Uz_ru.RU) {
                      uz_ru = Uz_ru.UZ;
                    }
                    context.read<SimpleProvider>().changuzru(uz_ru);
                  });
                },
                child: Container(
                  child: Text(
                    uz_ru.name,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: selectPage(context.watch<SimpleProvider>().getpage),
        drawer: DrawerHome(),
        bottomNavigationBar: ConvexAppBar(
          initialActiveIndex: currentindex,
          color: Colors.black,
          backgroundColor: Colors.white,
          items: [
            TabItem(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 15,
                ),
                title: Ui.h1[uz_ru]),
            TabItem(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                title: Ui.catalogs[uz_ru]),
            TabItem(
                icon: Icon(
                  Icons.navigate_next_sharp,
                  color: Colors.black,
                ),
                title: Ui.h3[uz_ru])
          ],
          onTap: (int index) {
            if (index == 0) {
              context.read<SectionProvider>().changeSection(null);
              context.read<SimpleProvider>().changepage(1);
            } else if (index == 1) {
              context.read<SimpleProvider>().changepage(6);
            } else if (index == 2) {
              context.read<SimpleProvider>().changepage(5);
            }

            currentindex = index;
          },
        ));
  }

  selectPage(int page) {
    switch (page) {
      case 1:
        return FirstPage();

      case 2:
        return DescriptionPage();
      case 3:
        return CustomerForm(modelSet: context.watch<ModelsProvider>().getmodel);
      case 4:
        return AboutCompany();
      case 5:
        return Adress();
      case 6:
        return SectionPage();
      case 7:
        return NewsPage();
    }
  }
}
