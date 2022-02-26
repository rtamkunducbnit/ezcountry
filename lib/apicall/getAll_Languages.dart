// ignore_for_file: file_names
import 'package:graphql/client.dart';
import '../models/language_model.dart';
import '../queries/all_language_query.dart';
import 'api.dart';

Future<List<Languages>> getAllLanguagex() async {
  var result = await client.query(
    QueryOptions(
      document: gql(getAllLanguage),
    ),
  );
  if (result.hasException) {
    throw result.exception!;
  }
  var json = result.data!["languages"];
  List<Languages> lang = [];
  for (var res in json) {
    var languagex = Languages.fromJson(res);
    lang.add(languagex);
  }
  return lang;
}
