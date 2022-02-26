import 'package:graphql/client.dart';
import '../constant/api_const.dart';

final _httpLink = HttpLink(
  baseUrl,
);

final GraphQLClient client = GraphQLClient(
  link: _httpLink,
  cache: GraphQLCache(),
);