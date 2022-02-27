import 'package:graphql/client.dart';
import '../constant/apiConst.dart';

final _httpLink = HttpLink(
  baseUrl,
);

final GraphQLClient client = GraphQLClient(
  link: _httpLink,
  cache: GraphQLCache(),
);