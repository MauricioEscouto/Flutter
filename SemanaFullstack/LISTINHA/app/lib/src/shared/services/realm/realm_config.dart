import 'package:realm/realm.dart';
import 'models/configuration_model.dart';
import 'models/task_model.dart';


var config = Configuration.local(
  [
    ConfigurationModel.schema,
    Task.schema,
    TaskBoard.schema,
  ],
  initialDataCallback: (realm) {
    realm.add(ConfigurationModel('system'));
  },
);
