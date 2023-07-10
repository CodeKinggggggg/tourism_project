import 'package:tourism_http/src/common/constants/error_message.dart';

// REST API 에러 처리
class DataException implements Exception {
  DataException({required this.message});

  DataException.fromDioError(int errorCode) {
    message = handleError(errorCode);
  }

  String message = "";

  String handleError(int statusCode) {
    switch (statusCode) {
      case 1:
        return ErrorMessage.applicationError;
      case 4:
        return ErrorMessage.httpError;
      case 12:
        return ErrorMessage.noOpenApiServiceError;
      case 20:
        return ErrorMessage.serviceAccessDeniedError;
      case 22:
        return ErrorMessage.limitedNumberOfServiceRequestsExceedsError;
      case 30:
        return ErrorMessage.serviceKeyIsNotRegisteredError;
      case 31:
        return ErrorMessage.deadlineHasExpiredeError;
      case 32:
        return ErrorMessage.unregisteredIpError;
      case 99:
        return ErrorMessage.unknownError;
      case 02:
        return ErrorMessage.dbError;
      case 03:
        return ErrorMessage.noDataError;
      case 05:
        return ErrorMessage.serviceTimeOutError;
      case 10:
        return ErrorMessage.invalidRequestParameterError;
      case 11:
        return ErrorMessage.noMandatoryRequestParametersError;
      case 21:
        return ErrorMessage.temporarilyDisableServiceKeyError;
      case 33:
        return ErrorMessage.unsignedCallError;
      default:
        return ErrorMessage.normalCode;
    }
  }

  @override
  String toString() => message;
}
