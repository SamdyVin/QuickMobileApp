class Service {
  final String title, description, image;
  final num price, min, max;
  Service({
    this.title,
    this.description,
    this.price,
    this.image,
    this.min = 1,
    this.max,
  });
}

List<Service> services = [largeBox, mediumBox, smallBox, mailBox];

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
