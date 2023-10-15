import 'package:bloc/bloc.dart';

class ThemeBloc extends Cubit<bool> {
  ThemeBloc() : super(true);

  void changeTheme() => emit(!state);

  @override
  void onChange(Change<bool> change) {
    super.onChange(change);
    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print(error);
  }
}
