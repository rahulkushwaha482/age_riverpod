import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../screens/age_validation_providers.dart';

final ageValidationProvider = StateNotifierProvider((ref) {
  return AgeValidationProvider();
});
