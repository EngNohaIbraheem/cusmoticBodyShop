abstract class PaymentStates{}

class InitPaymentState extends PaymentStates{}

class LoadingAuthTokenPaymentState extends PaymentStates {}

class SuccessAuthTokenPaymentState extends PaymentStates {}

class ErrorAuthTokenPaymentState extends PaymentStates {}

class LoadingOrderIdPaymentState extends PaymentStates {}

class ErrorOrderIdPaymentState extends PaymentStates {}

class ErrorRequestTokenPaymentState extends PaymentStates {}

class LoadingRequestTokenPaymentState extends PaymentStates {}

class SuccessRequestTokenPaymentState extends PaymentStates {}