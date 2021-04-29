import 'package:flutter/material.dart';

class Option {
  Icon icon;
  String title;
  String subtitle;

  Option({this.icon, this.title, this.subtitle});
}

final options = [
  Option(
    icon: Icon(Icons.king_bed, size: 40.0),
    title: 'Small Move',
    subtitle: 'An easy way to move a few items',
  ),
  Option(
    icon: Icon(Icons.store, size: 40.0),
    title: 'Store Pick Up & Delivery',
    subtitle: 'Get your purchase home',
  ),
  Option(
    icon: Icon(Icons.engineering, size: 40.0),
    title: 'No Truck, Labor Onlu',
    subtitle: 'No truck, but a ton of muscle',
  ),
  Option(
    icon: Icon(Icons.local_shipping_outlined, size: 40.0),
    title: 'Apartmet Move',
    subtitle: 'Studio or 1- bedroom (max 70 sq ft)',
  ),
  Option(
    icon: Icon(Icons.volunteer_activism, size: 40.0),
    title: 'Donate Goods',
    subtitle: 'Convenient way to help those in need',
  ),
  Option(
    icon: Icon(Icons.track_changes_outlined, size: 40.0),
    title: 'Craigslist Delivery',
    subtitle: 'Get your great find deliverd',
  ),
  Option(
    icon: Icon(Icons.timeline_rounded, size: 40.0),
    title: 'Other',
    subtitle: 'We can help move almost anything',
  ),
  Option(
    icon: Icon(Icons.settings, size: 40.0),
    title: 'Setting',
    subtitle: 'Lorem ipsum dolor sit amet, consect.',
  ),
];
