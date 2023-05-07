import 'package:graphql_flutter/graphql_flutter.dart';
import 'graphQlConfig.dart';

class GraphQLService {
  static GraphQLConfig graphQLConfig = GraphQLConfig();
  GraphQLClient client = graphQLConfig.clientToQuery();
  GraphQLClient userlogin = graphQLConfig.LoginToQuery();
  GraphQLClient passwordupdate = graphQLConfig.UpdatePasswordToQuery();

  Future<bool> login(String? login, String password) async {
    try {
      QueryResult result = await userlogin.mutate(
        MutationOptions(
          fetchPolicy: FetchPolicy.noCache,
          document: gql("""
              mutation Mutation(\logininput: LoginInput) {
                login(logininput: \logininput)
              }
            """),
          variables: {
            "logininput": {
              "login": login,
              "password": password,
            }
          },
        ),
      );

      if (result.hasException) {
        throw Exception(result.exception);
      } else {
        return true;
      }
    } catch (error) {
      return false;
    }
  }
  Future<bool> updatepassword(String oldpassword, String newpassword,String confirmpassword) async {
    try {
      QueryResult result = await passwordupdate.mutate(
        MutationOptions(
          fetchPolicy: FetchPolicy.noCache,
          document: gql("""
              mutation Mutation(\passwordupdateinput: UpdatepasswordInput) {
                passwordupdateinput(passwordupdateinput: \passwordupdateinput)
              }
            """),
          variables: {
            "passwordupdateinput": {
              "oldpassword": oldpassword,
              "newpassword": newpassword,
              "confirmpassword": confirmpassword,
            }
          },
        ),
      );

      if (result.hasException) {
        throw Exception(result.exception);
      } else {
        return true;
      }
    } catch (error) {
      return false;
    }
  }
}
