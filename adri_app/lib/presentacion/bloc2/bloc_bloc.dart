import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;

import '../modelo/datos.dart';
import 'bloc_state.dart';
import 'bloc_event.dart';


class PageBlocBloc extends Bloc<PageBlocEvent, PageBlocState> {
  PageBlocBloc() : super(PageInitial()) {
    on<PageBlocEvent>((event, emit) async {
      emit(PageLoading());
        final url = Uri.parse('https://raw.githubusercontent.com/Adriano-sps/Adriano/refs/heads/main/archivo.json');
        final response = await http.get(url);

        if (response.statusCode == 200){
          Map objectMap = jsonDecode(response.body);
          print("entro la peticion");
          print(objectMap);
          print("{}");
          Datos datos = Datos(objectMap);
          print(datos);
          emit(PageSuccess(datos));
        }else{
          emit(PageFailure());
        }


    });
  }
}