import 'package:flutter/material.dart';

class Rendome {
  final String gender;
  final String title;
  final String first;
  final String last;
  final int numberlocation;
  final String namelocation;
  final String city;
  final String state;
  final String country;
  final int postcode;
  final String email;
  final String usernamelogin;
  final String passwordlogin;
  final String phone;
  final String cellphone;
  // final NetworkImage largepic;
  // final NetworkImage mediumpic;
  // final NetworkImage thumbnailpic;

  Rendome({
    required this.gender,
    required this.title,
    required this.first,
    required this.last,
    required this.numberlocation,
    required this.namelocation,
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.email,
    required this.usernamelogin,
    required this.passwordlogin,
    required this.phone,
    required this.cellphone,
    //  required this.largepic,
    // required this.mediumpic,
    // required this.thumbnailpic,
  });

  factory Rendome.formJSON({required Map<String, dynamic> json}) {
    return Rendome(
      gender: json['results'][0]['gender'],
      title: json['results'][0]['name']['title'],
      first: json['results'][0]['name']['first'],
      last: json['results'][0]['name']['last'],
      numberlocation: json['results'][0]['location']['street']['number'],
      namelocation: json['results'][0]['location']['street']['name'],
      city: json['results'][0]['location']['city'],
      state: json['results'][0]['location']['state'],
      country: json['results'][0]['location']['country'],
      postcode: json['results'][0]['location']['postcode'],
      email: json['results'][0]['email'],
      usernamelogin: json['results'][0]['login']['username'],
      passwordlogin: json['results'][0]['login']['password'],
      phone: json['results'][0]['phone'],
      cellphone: json['results'][0]['cell'],
      //  largepic: json['results'][0]['picture']['large'],
      // mediumpic: json['results'][0]['picture']['medium'],
      // thumbnailpic: json['results'][0]['picture']['thumbnail'],
    );
  }
}
