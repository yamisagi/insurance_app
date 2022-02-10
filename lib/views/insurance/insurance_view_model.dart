import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:insurance_app/core/logger.dart';

class InsuranceViewModel extends BaseViewModel {
  Logger log;

  InsuranceViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
