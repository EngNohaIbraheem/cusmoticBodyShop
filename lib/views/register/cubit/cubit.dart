import 'package:bodyshop/remote/dio_helper.dart';
import 'package:bodyshop/views/register/cubit/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../contants.dart';

class PaymentCubit extends Cubit<PaymentStates> {
  PaymentCubit() : super(InitPaymentState());

  static PaymentCubit get(context) => BlocProvider.of(context);
  
  void getAuthToken(){
    emit(LoadingAuthTokenPaymentState());
    DioHelper.postData(endPoint: "auth/tokens",
        data:{
      "api_key" : API_KEY
        }).then((value) {
       emit(SuccessAuthTokenPaymentState());
    }).catchError((error) {
      emit(ErrorAuthTokenPaymentState());
    });
}
}

