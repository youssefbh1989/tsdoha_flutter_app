import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLConfig {
  static HttpLink httpLink = HttpLink(
    "https://tsdoha.com/",
  );
  static HttpLink httpLinklogin = HttpLink(
    "https://tsdoha.com/web/session/authentificate",
  );
  static HttpLink httpLinkUpdatePassword = HttpLink(
    "https://tsdoha.com/web/session/authentificate",
  );
  GraphQLClient clientToQuery() => GraphQLClient(
        cache: GraphQLCache(),
        link: httpLink,
      );
  GraphQLClient LoginToQuery() => GraphQLClient(
    cache: GraphQLCache(),
    link: httpLinklogin,
  );
  GraphQLClient UpdatePasswordToQuery() => GraphQLClient(
    cache: GraphQLCache(),
    link: httpLinkUpdatePassword,
  );
}
