// returns a country with the given country code
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import '../models/model.dart';
import '../queries/allcountry_query.dart';
import 'api.dart';

  Future<List<Countrys>> getAllCountriesx() async {
    var result = await client.query(
      QueryOptions(
        document: gql(getAllCountries),
      ),
    );
    if (result.hasException) {
      throw result.exception!;
    }
    debugPrint(result.toString());
    var json = result.data!["countries"];
    List<Countrys> countries = [];
    for (var res in json) {
      var country = Countrys.fromJson(res);
      countries.add(country);
    }
    return countries;
  }

