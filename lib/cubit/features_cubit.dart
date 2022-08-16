import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class FeaturesCubit extends Cubit<int> {
  FeaturesCubit() : super(0);

  void setFeatures(int index) {
    emit(index);
  }
}
