import 'package:appwrite/appwrite.dart';

import 'package:my_flutter_project/constants.dart' as constants;

class Appwrite {
  static final Appwrite instance = Appwrite._instance();

  late final Client client;

  late final Account account;

  Appwrite._instance() {
    client = Client()
        .setEndpoint("https://cloud.appwrite.io/v1")
        .setProject(constants.appwriteProjectID);
    account = Account(client);
  }
}
