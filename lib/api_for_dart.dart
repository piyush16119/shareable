import 'package:oneweb/data.dart';

class Information {
  static Data textData = Data(
      home: '',
      information: '',
      setting: '',
      report: '',
      logout: '',
      tab: '',
      hotel: '',
      image: '',
      card1: '',
      card2: '',
      card3: '',
      card4: '',
      card5: '',
      contact: '',
      email: '');
  static bool getData(String language) {
    if (language == 'en_Us') {
      textData.home = 'Home';
      textData.information = 'Information';
      textData.setting = 'Setting';
      textData.report = 'Report';
      textData.logout = 'Log out';
      textData.tab = 'Tab';
      textData.hotel = 'Radisson Hotel';
      textData.image = 'Images';
      textData.card1 = 'General';
      textData.card2 = 'Reservations';
      textData.card3 = 'Meetings & Events';
      textData.card4 = 'Restaurants & Bars';
      textData.card5 = 'Sky Spa & Salon';
      textData.email = 'Email';
      textData.contact = 'Contact information';
      return true;
    } else {
      textData.home = 'گھر';
      textData.information = 'معلومات';
      textData.setting = 'ترتیب';
      textData.report = 'رپورٹ';
      textData.logout = 'لاگ آوٹ';
      textData.tab = 'ٹیب';
      textData.hotel = 'ردیسسوں ہوٹل';
      textData.image = 'امیجز';
      textData.card1 = 'جنرل';
      textData.card2 = 'تحفظات';
      textData.card3 = 'ملاقاتیں & تقریبات';
      textData.card4 = 'ریستوراں & بارز';
      textData.card5 = 'آسمان سپا &  سیلون';
      textData.email = 'ای میل';
      textData.contact = 'رابطہ کریں۔ معلومات';
      return false;
    }
  }
}
