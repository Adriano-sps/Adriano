import 'package:adri_app/presentacion/bloc/bloc_state.dart';
import 'package:adri_app/presentacion/bloc/buscar_event.dart';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;


class HomeBloc extends Bloc<HomeEvent, HomeState>{
  HomeBloc() : super(Inicio()) {
  on<HomeSearchPressed>((event, emit) async{
    emit(Cargando());
    final url = Uri.parse("https://raw.githubusercontent.com/Adriano-sps/Adriano/refs/heads/main/archivo.json");
    http.Response respuesta = await http.get(url);
    if (respuesta.statusCode == 200) {
      emit(Principal());
    }else{
      emit(Error());
    }
  });
  }
  
}
