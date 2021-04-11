class ChatItem {
  String speakerName;
  String lastMassage;
  bool isActineNow;
  String dateTime;
  String speakerImgURL;

  ChatItem({
    this.speakerName,
    this.lastMassage,
    this.isActineNow,
    this.dateTime,
    this.speakerImgURL,
  });
}

List<ChatItem> chatDemoData = [
  ChatItem(
    speakerName: "Ahmed Magdy",
    lastMassage: "Oky thank you see u soon",
    isActineNow: true,
    dateTime: "3:55 pm",
    speakerImgURL: "images/ahmed magdy.jpg",
  ),
  ChatItem(
    speakerName: "amr yasser",
    lastMassage: "i will try to call him",
    isActineNow: true,
    dateTime: "3:02 pm",
    speakerImgURL: "images/amr yasser.jpg",
  ),
  ChatItem(
    speakerName: "mohamed taha",
    lastMassage: "oky",
    isActineNow: true,
    dateTime: "1:16 pm",
    speakerImgURL: "images/mohamed taha.jpg",
  ),
  ChatItem(
    speakerName: "mohamed esmail",
    lastMassage: "hello my friend",
    isActineNow: true,
    dateTime: "12:36 pm",
    speakerImgURL: "images/man1.png",
  ),
  ChatItem(
    speakerName: "salem salah",
    lastMassage: "where are u now",
    isActineNow: true,
    dateTime: "12:35 pm",
    speakerImgURL: "images/salem salah.jpg",
  ),
  ChatItem(
    speakerName: "sam regol",
    lastMassage: "hello my friend",
    isActineNow: true,
    dateTime: "10:15 am",
    speakerImgURL: "images/man2.png",
  ),
  ChatItem(
    speakerName: "noza hamam",
    lastMassage: "i love you",
    isActineNow: true,
    dateTime: "7:52 am",
    speakerImgURL: "images/girl1.png",
  ),
  ChatItem(
    speakerName: "alaa ezz",
    lastMassage: "hahahahaha",
    isActineNow: true,
    dateTime: "7:40 am",
    speakerImgURL: "images/man3.png",
  ),
  ChatItem(
    speakerName: "mohamed salama",
    lastMassage: "stop talking with me",
    isActineNow: true,
    dateTime: "6:49 am",
    speakerImgURL: "images/mohamed salama.jpg",
  ),
  ChatItem(
    speakerName: "talal elsayed",
    lastMassage: "7pipi a5park eh",
    isActineNow: true,
    dateTime: "2:01 am",
    speakerImgURL: "images/mohaned.jpg",
  ),
];

enum MassageType { text, audio, image, video }
enum MassageStatu { not_sent, not_viewed, viewed }

class Massage {
  String text;
  MassageType massageType;
  MassageStatu massageStatu;
  bool isSender;

  Massage({
    this.text,
    this.massageType,
    this.massageStatu,
    this.isSender,
  });
}

List<Massage> massagesDemoData = [
  Massage(
    text: 'hi ahmed how are you',
    massageType: MassageType.text,
    massageStatu: MassageStatu.viewed,
    isSender: true,
  ),
  Massage(
    text: 'What did he study in college today',
    massageType: MassageType.text,
    massageStatu: MassageStatu.viewed,
    isSender: true,
  ),
  Massage(
    text: '',
    massageType: MassageType.audio,
    massageStatu: MassageStatu.viewed,
    isSender: false,
  ),
  Massage(
    text: 'Obviously, it was an important lecture',
    massageType: MassageType.text,
    massageStatu: MassageStatu.viewed,
    isSender: true,
  ),
  Massage(
    text: 'right \ntry not to be absent again',
    massageType: MassageType.text,
    massageStatu: MassageStatu.viewed,
    isSender: false,
  ),
  Massage(
    text: 'Oky thank you see u soon ',
    massageType: MassageType.text,
    massageStatu: MassageStatu.not_viewed,
    isSender: true,
  ),
];
