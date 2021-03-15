import 'package:quick/models/advertises.dart';
import 'package:quick/models/event.dart';
import 'package:quick/models/services.dart';

List<Service> services = [largeBox, mediumBox, smallBox, mailBox];
List<Advertise> advertise = [a1, a2];
List<Event> events = [e1, e2, e3];

Service largeBox = Service(
  title: "Large Box",
  description:
      "This large box service can handle all your boxes within all size of boxes or mails.",
  price: 12,
  image:
      "https://www.pikpng.com/pngl/b/484-4849485_packaging-vector-cardboard-cartoon-cardboard-box-png-clipart.png",
  max: 3,
);

Service mediumBox = Service(
  title: "Medium Box",
  description:
      "This medium box service can handle all your boxes even if it is medium, small or mail.",
  price: 8,
  image:
      "https://image.shutterstock.com/image-photo/close-stack-cardboard-boxes-on-260nw-248759344.jpg",
  max: 5,
);

Service smallBox = Service(
  title: "Small Box",
  description: "This small box service can handle all your small box and mail.",
  price: 5,
  image:
      "https://image.freepik.com/free-vector/cartoon-boxes_23-2147510524.jpg",
  max: 10,
  min: 3,
);

Service mailBox = Service(
  title: "Mail Box",
  description: "This mail box service can handle only your mail.",
  price: 3,
  image:
      "https://thumbs.dreamstime.com/b/cartoon-mail-letter-icon-isolated-illustration-vector-170752338.jpg",
  max: 30,
  min: 5,
);

Advertise a1 = Advertise(
  title: "Coke: Share a Coke",
  description:
      "Big brands are often hard-pressed to do something ground-breaking when they're already so big. So, what did Coca-Cola do to appeal to the masses? They appealed to individuals — by putting their names on each bottle. The Share a Coke campaign began in Australia in 2011, when Coca-Cola personalized each bottle with the 150 most popular names in the country. Since then, the U.S. has followed suit, printing first names across the front of its bottles and cans in Coke's branded font. You can even order custom bottles on Coke's website to request things like nicknames and college logos. \n It was a breaking story across the marketing and advertising industry. Many consumers were enchanted by it, while others were confused by it — why make a temporary item so personal? Pepsi even released counter-ads shortly after the campaign launched.\nNonetheless, Coke received immediate attention for it.",
  image:
      "https://blog.hubspot.com/hs-fs/hubfs/share%20a%20coke%20advertisement.jpg?width=1168&name=share%20a%20coke%20advertisement.jpg",
  date: "15-03-2021",
);

Advertise a2 = Advertise(
  title: 'KFC: "FCK" (2018)',
  description:
      "The ad above isn't just an empty bucket of KFC with the company's letters jumbled around. It's also not a normal, unprompted promotion of fried chicken.This ad is an apology, and perhaps the most creative one of all time. In February 2018, KFC's business in the U.K. ran out of chicken. You read that right: A poultry company ran out of poultry. It's not every day that a business stumbles upon the most ironic PR crisis in company history, so when it happens, all eyes are on the business's response. Well, we're happy to report that KFC stuck the landing. With the help of the creative agency Mother London, KFC took out a full-page ad in Metro, the U.K.'s newspaper, rearranging its three famous initials to create a hilarious albeit explicit response to its product shortage. The ad depicts a KFC bucket that reads, 'FCK' — as if to say, 'FCK, this is embarrassing.' (You can fill in the missing letter...) Beneath this design, the company goes on to apologize for what it realizes is an inexcusable, if not slightly, funny failure.",
  image:
      "https://blog.hubspot.com/hs-fs/hubfs/kfc-fck-ad-2018.jpg?width=1380&name=kfc-fck-ad-2018.jpg",
  date: "10-03-2021",
);

Event e1 = Event(
  title: "Khmer New Year – End Of Harvest Season",
  image:
      "https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2018/09/Choul-Chhnam-Thmey-e1537790908842.jpg",
  description:
      "This is one of the biggest festivals in Cambodia during which Cambodians with Khmer roots stop working for a whole 3 days and return to their homes to celebrate the end of the traditional harvest season. It is a time when the farmers, who have toiled the whole year in their farms for harvesting food, take some leisurely time off. The Khmer community celebrates this day by uniting with their family members and performing many purification ceremonies, visiting their temples and having fun playing traditional games.",
  date: "14th April 2021",
);

Event e2 = Event(
  title: "King Norodom Sihamoni’s Birthday – Coronation Of The King",
  image:
      "https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2018/09/King-Norodom-e1537791190237.jpg",
  description:
      "This day is very important for the Cambodians as it reminds them about the outcome of Khmer Rouge and Pol Pot when a government with limited powers was absent. This day is celebrated on the event of birth and coronation of King Norodom Sihamoni, who is the current monarch of Cambodia. The celebration continues for three days every year.",
  date: "13th May 2021",
);
Event e3 = Event(
  title: "Water Festival – To Honor Naval Forces",
  image:
      "https://img.traveltriangle.com/blog/wp-content/tr:w-700,h-400/uploads/2018/09/WATER-FESTIVAL-2-e1537791748651.jpg",
  description:
      "Water festival Cambodia is a magnificent and traditional event which take place at Phnom Penh. The Cambodia Water Festival history dates back to 12th century of Angkor period when the Naval Forces had battled for securing Cambodia. It is a mark of respect for these Naval Forces. It is celebrated night and day with all the Cambodian citizens, peasants and foreign travelers gathering in the capital. A boat racing event takes place during the celebration which formerly was a battle training conducted by the naval forces.",
  date: "13th April 2021",
);
