
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:screll/Api/screllapi.dart';

import '../screllModel.dart';

part 'screll_event.dart';
part 'screll_state.dart';

class ScrellBloc extends Bloc<ScrellEvent, ScrellState> {
late ScrellModel screllModel;
ScrellApi screllApi =ScrellApi();
  ScrellBloc() : super(ScrellInitial()) {
    on<FetchCategory>((event, emit) async{
emit(ScrellBlocLoading());
try{
screllModel =await screllApi.getCategory();
emit(SrellBlocLoaded());
}catch(e){
  print(e);
  emit(ScrellBlocError());
}
    });
  }
}
