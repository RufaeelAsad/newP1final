import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const String APP_TITLE = 'SHOP UI';
const String homeImg =
    'https://images.unsplash.com/photo-1503342217505-b0a15ec3261c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60';

const String profileUrl = "assets/images/Profile.jpg";
const List<Map<String, Object>> categories = [
  {'title': 'New In', 'imgUrl': 'assets/images/catagory1.jpg'},
  {'title': 'Clothing', 'imgUrl': 'assets/images/catagory2.jpg'},
  {'title': 'Men', 'imgUrl': 'assets/images/catagory3.jpg'},
  {'title': 'Women', 'imgUrl': 'assets/images/catagory4.jpg'},
  {'title': 'Couple', 'imgUrl': 'assets/images/catagory5.jpg'},
];

const List<Map<String, Object>> recommends = [
  {
    'title': 'Summer Loose Korean T-shirt',
    'price': '30',
    'imgUrl': 'assets/images/recommends1.jpg'
  },
  {
    'title': 'Bat Sleeve Student T-shirt Summer',
    'price': '35',
    'imgUrl': 'assets/images/recommends2.jpg'
  },
  {
    'title': 'Summer New Korean Version',
    'price': '25',
    'imgUrl': 'assets/images/recommends3.jpg'
  },
  {
    'title': 'Loose-fitting Outside Shirt',
    'price': '30',
    'imgUrl': 'assets/images/recommends4.jpg'
  },
  {
    'title': 'Cotton Short-sleeved T-shirt',
    'price': '20',
    'imgUrl': 'assets/images/recommends5.jpg'
  },
];

const List<Map<String, Object>> recently = [
  {
    'title': 'Summer Loose Korean T-shirt',
    'price': '30',
    'imgUrl':
    'assets/images/recently1.jpg'  },
  {
    'title': 'Bat Sleeve Student T-shirt Summer',
    'price': '35',
    'imgUrl':
    'assets/images/recently2.jpg'  },
  {
    'title': 'Summer New Korean Version',
    'price': '25',
    'imgUrl':
    'assets/images/recently3.jpg'  },
  {
    'title': 'Loose-fitting Outside Shirt',
    'price': '30',
    'imgUrl':
    'assets/images/recently4.jpg'  },
  {
    'title': 'Cotton Short-sleeved T-shirt',
    'price': '20',
    'imgUrl':
    'assets/images/recently5.jpg'  }
];


const List<Map<String, Object>> sizes = [
  {'title': 'S'},
  {'title': 'M'},
  {'title': 'L'},
  {'title': 'XL'},
  {'title': 'XXL'},
];

const List exploreBanner = [
  {
    'year': '2019',
    'title': 'Urban Collection',
    'description':
    'Discover our urban collection to spend the summer with great style.',
    'buttonTitle': 'SEE THE COLLECTION'
  },
  {
    'year': '2020',
    'title': 'Urban Fashion',
    'description':
    'Discover our urban collection to spend the summer with great style.',
    'buttonTitle': 'SEE THE FASHION'
  },
  {
    'year': '2021',
    'title': 'Urban Collection',
    'description':
    'Discover our urban collection to spend the summer with great style.',
    'buttonTitle': 'SEE THE COLLECTION'
  },
  {
    'year': '2022',
    'title': 'Urban Fashion',
    'description':
    'Discover our urban collection to spend the summer with great style.',
    'buttonTitle': 'SEE THE FASHION'
  },
];

// const List productDetail = [
//   'https://images.unsplash.com/photo-1565155003033-252a7073802c?ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80',
//   'https://images.unsplash.com/photo-1545911825-6bfa5b0c34a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
//   'https://images.unsplash.com/photo-1572112686886-5c0b5bc8dacd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
//   'https://images.unsplash.com/photo-1582041148887-67274b989ae3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
// ];
//


const List cartList = [
  {
    "img": "assets/images/card1.jpg",
    "name": "Snoopy T-shirt",
    "ref": "04559812",
    "price": "\$40",
    "size": "S"
  },
  {
    "img": "assets/images/card2.jpg",
    "name": "American",
    "ref": "04459811",
    "price": "\$30",
    "size": "M"
  },
];

List menusMore = [
  "Home",
  "Explore",
  "Stores",
  "Cart",
  "Notifications",
  "Loyalty Card",
  "My orders"
];

List itemsTab = [
  {"icon": Icons.home, "size": 28.0},
  {"icon": FontAwesomeIcons.store, "size": 22.0},
  {"icon": FontAwesomeIcons.userAlt, "size": 21.0},
  {"icon": FontAwesomeIcons.shoppingBag, "size": 22.0},
  {"icon": Icons.more_horiz, "size": 40.0},
];

List accountList = [
  "Account Details",
  "Loyalty card & offers",
  "Notifications",
  "Delivery Information",
  "Payment Information",
  "Language",
  "Privacy Settings"
];

List storeList = [
  {
    "img":
    "assets/images/Rawalpindi.jpg"   ,
    "name": "Rawalpindi, Pakistan",
    "open": 1,
    "latitude": 33.601121,
    "longitude": 73.056454
  },
  {
    "img":
    "assets/images/Jhelum.jpg",
    "name": "Jhelum, Pakistan",
    "open": 0,
    "latitude": 33.601121,
    "longitude": 73.056454
  },
  {
    "img":
    "assets/images/Islamabad.jpg",
    "name": "Islamabad, Pakistan",
    "open": 1,
    "latitude": 33.601121,
    "longitude":73.056454
  },
];


