// ignore_for_file: file_names
import 'package:graphql/client.dart';
import '../models/languageModel.dart';
import '../queries/all_Language_Query.dart';
import 'api.dart';

Future<List<Languages>> getLanguages() async {
  var result = await client.query(
    QueryOptions(
      document: gql(getLanguage),
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
