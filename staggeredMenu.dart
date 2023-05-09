import 'dart:convert';

class Card {
  late int id;
  late String title;
  late String subtitle;
  late String text;

  Card(
      {
        required this.title,
    required this.subtitle, required this.text, required this.id});

  factory Card.fromJson(Map<String, dynamic> json) {
    return Card(
      id :json["id"],
      title:json["title"],
      subtitle: json["subtitle"],
      text:json["text"]
    );
  }
}