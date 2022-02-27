// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import '../models/model.dart';
import '../queries/all_Country_Query.dart';
import 'api.dart';

  Future<List<Country>> getCountry() async{
    var result = await client.query(
      QueryOptions(
        document: gql(getCountries),
      ),
    );
    if (result.hasException) {
      throw result.exception!;
    }
    debugPrint(result.toString());
    var json = result.data!["countries"];
    List<Country> countries = [];
    for (var res in json) {
      var country = Country.fromJson(res);
      countries.add(country);
    }
    return countries;
  }

