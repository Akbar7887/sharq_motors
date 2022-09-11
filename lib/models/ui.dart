import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

enum Uz_ru { UZ, RU }

class Ui {
  static final String name = "Sharq-Motors";
  static final String fullname = "ООО \"SHOSH AUTOTRADE GROUP\"";
  static final String url =
     'http://195.158.30.101:8087/api/'; //'';'https://localhost:8083/api/'; //
  static final String urllogin =
    'http://195.158.30.101:8087';
  // static final String url = 'http://localhost:8087/api/';
  // static final String urllogin = 'http://localhost:8087';
  static final String phone = "+998 78 113 00 12";
  static final String textstyle = 'Noto';
  static final String telegram = 't.me/tasuzcom';
  static final String inhstagram =
      'www.instagram.com/sharqmotors/';
  static final String facebook = 'www.facebook.com/sharqmotors.uz';

  //=============== Section ===================
  static final Map<dynamic, String> catalogs = {
    Uz_ru.UZ: "Kataloglar",
    Uz_ru.RU: "Каталоги"
  };

  //===============Adress =========================

  static final Map<dynamic, String> title = {
    Uz_ru.UZ:
    "Avtosalon Sharq Motors",
    Uz_ru.RU:
    "Автосалон Sharq Motors"
  };

  static final Map<dynamic, String> adress = {
    Uz_ru.UZ:
        "Manzil: Toshkent shaxar, Mirzo-Ulug'bek tumani, Avayxona kuchasi, Minglola MSG, 98a-uy.",
    Uz_ru.RU:
        "Адрес: г.Ташкент, Мирзо-Улугбекский район, ул. Авайхон, Минглола МСГ,98а- дом."
  };
  static final Map<dynamic, String> adressfix = {
    Uz_ru.UZ: "Манзилимиз",
    Uz_ru.RU: "Адреса"
  };

  //=========about_company=============================

  static final Map<dynamic, String> tab = {
    Uz_ru.UZ: "Kompanya haqida",
    Uz_ru.RU: "О Компании"
  };
  static final Map<dynamic, String>  choose = {
    Uz_ru.UZ: "Tanlovingiz",
    Uz_ru.RU: "Ваше выбор!"
  };

  static final Map<dynamic, String>  applyphone = {
    Uz_ru.UZ: "Qo'ng'iroq buyurtma berish",
    Uz_ru.RU: "Заказать звонок"
  };

  static final Map<dynamic, String> news = {
    Uz_ru.UZ: "Yangiliklar",
    Uz_ru.RU: "Новости"
  };

  static final Map<dynamic, String> sertifikat = {
    Uz_ru.UZ: "Sertifikatlar",
    Uz_ru.RU: "Сертификаты"
  };

  static final Map<dynamic, String> description = {
    Uz_ru.UZ:
        "",
    Uz_ru.RU:
        ""
  };

  static final Map<dynamic, String> tema1 = {
    Uz_ru.UZ: "",
    Uz_ru.RU: ""
  };

  static final Map<dynamic, String> descriptionservice = {
    Uz_ru.UZ:
        "",
    Uz_ru.RU:
        ""
  };
  static final Map<dynamic, String> tema2 = {
    Uz_ru.UZ: "",
    Uz_ru.RU: ""
  };
  static final Map<dynamic, String> descriptionf = {
    Uz_ru.UZ:
        "",
    Uz_ru.RU:
        ""
  };

  //======= first_page ========================
  static final Map<dynamic, String> f1 = {
    Uz_ru.UZ: "Bugun savdoda:",
    Uz_ru.RU: "Сегодня на продаже:"
  };
  static final Map<dynamic, String> excchange = {
    Uz_ru.UZ: "so'm",
    Uz_ru.RU: "сум"
  };

  static final Map<dynamic, String> cena = {
    Uz_ru.UZ: "boshlang'ich narxi:",
    Uz_ru.RU: "цены от:"
  };

  // ==========description_page =============
  static final Map<dynamic, String> d1 = {
    Uz_ru.UZ: "Tavsifi:",
    Uz_ru.RU: "Описание:"
  };

  static final Map<dynamic, String> d2 = {
    Uz_ru.UZ: "Xarakteristikasi:",
    Uz_ru.RU: "Характеристика:"
  };
  static final Map<dynamic, String> d3 = {
    Uz_ru.UZ: "Buyurtma berish!",
    Uz_ru.RU: "Заказ звонка!"
  };

  //=========== Home =============

  static final Map<dynamic, String> h1 = {
    Uz_ru.UZ: "Ostatok",
    Uz_ru.RU: "Остаток"
  };

  static final Map<dynamic, String> h2 = {
    Uz_ru.UZ: "Buyurtma qilish",
    Uz_ru.RU: "Далее (Заказать)"
  };

  static final Map<dynamic, String> h3 = {
    Uz_ru.UZ: "Manzil",
    Uz_ru.RU: "Адрес"
  };

  //========= Customer form ==================

  static final Map<dynamic, String> c1 = {
    Uz_ru.UZ: "F.I.Sh.",
    Uz_ru.RU: "Ф.И.О."
  };

  static final Map<dynamic, String> c2 = {
    Uz_ru.UZ: "F.I.Sh. tuldirilmagan",
    Uz_ru.RU: "Не заполнено поле ФИО"
  };

  static final Map<dynamic, String> c3 = {
    Uz_ru.UZ: "Telefon raqamingiz",
    Uz_ru.RU: "Номер телефона"
  };

  static final Map<dynamic, String> c4 = {
    Uz_ru.UZ: "Telefon raqami tuldirilmagan",
    Uz_ru.RU: "Не заполнено поле телефона"
  };

  static final Map<dynamic, String> c5 = {
    Uz_ru.UZ: "E-mail",
    Uz_ru.RU: "Эл.почта"
  };

  static final Map<dynamic, String> c6 = {
    Uz_ru.UZ: "E-mail nomini tekshiring",
    Uz_ru.RU: "проверьте правильность почты!"
  };

  static final Map<dynamic, String> c7 = {
    Uz_ru.UZ:
        "Sizning murojatingiz qabul qilindi! Siz bilan yaqin orada menegerimiz bog'lanadi",
    Uz_ru.RU: "Ваше заявка принята Менеджеры свяжутся с Вами !"
  };

  static final Map<dynamic, String> c8 = {
    Uz_ru.UZ:
        "YUQ! setda muammo borligi sababli, Sizning murojatingiz qabul qilinmadi!",
    Uz_ru.RU: "Просим повторить заказ из за не поладки в сети!"
  };

  static callInstagram() async {
    String url = "https://${Ui.inhstagram}";
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false);
    } else {
      throw 'Could not url';
    }
  }

  static callFacebook() async {
    String url = "https://${Ui.facebook}";
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false);
    } else {
      throw 'Could not url';
    }
  }

  static callTelegram() async {
    String url = "https://${Ui.telegram}";
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false);
    } else {
      throw 'Could not url';
    }
  }

  static callNumber() async {
    bool? res = await FlutterPhoneDirectCaller.callNumber(Ui.phone);
  }
}
