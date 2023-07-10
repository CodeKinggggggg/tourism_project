abstract class ErrorMessage {
  static const applicationError = '어플리케이션 에러'; // 1
  static const httpError = 'HTTP 에러'; // 4
  static const noOpenApiServiceError = '해당 오픈 API 서비스가 없거나 폐기됨'; // 12
  static const serviceAccessDeniedError = '서비스 접근거부'; // 20
  static const limitedNumberOfServiceRequestsExceedsError =
      '서비스 요청제한횟수 초과에러'; // 22
  static const serviceKeyIsNotRegisteredError = '등록되지 않은 서비스키'; // 30
  static const deadlineHasExpiredeError = '활용기간 만료'; // 31
  static const unregisteredIpError = '등록되지 않은 IP'; // 32
  static const unknownError = '기타에러'; // 99
  static const dbError = '데이터베이스에러'; // 02
  static const noDataError = '데이터없음에러'; // 03
  static const serviceTimeOutError = '서비스연결실패에러'; // 05
  static const invalidRequestParameterError = '잘못된요청파라메터에러'; // 10
  static const noMandatoryRequestParametersError = '필수요청파라메터가없음'; // 11
  static const temporarilyDisableServiceKeyError = '일시적으로사용할수없는서비스키'; // 21
  static const unsignedCallError = '서명되지않은호출'; // 33
  static const normalCode = '정상'; // 00
}
