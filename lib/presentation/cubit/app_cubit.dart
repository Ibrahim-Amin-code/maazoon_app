import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';


part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  SfRangeValues values = SfRangeValues(40.0, 80.0);

  void changeFilter(SfRangeValues values) {
    values = values;
    emit(ChangeFilterState());
  }
}
