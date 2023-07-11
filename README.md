[투어리 - 관광 사진 앱] 

1. 아키택처
- 클린 아키택처 기반으로 구성
- Presetation Layer, Data Layer, Domain Layer으로 크게 나뉨
- 탭바를 기준으로 크게 home, wishList로 features를 나눔

  1) Presentation Layer
    - 프로젝트의 가장 외부의 레이어
    - 상태관리와 앱의 UI을 담당
    - provider, screen, widget으로 구성
    - provider는 상태관리를 담당
    - screen과 widget는 ui를 담당
  2) Data Layer 
    - 비즈니스 로직을 정의
    - Datasource와 repository implement로 구성.
    - Datasource는 local과 remote로 나뉘고 local은 로컬에서 데이터 통신에 대한 로직 담당, remote는 서버와의 데이터통신 담당
  3) Domain Layer
    - 프로젝트 가장 내부의 레이어
    - repository interface, provider, model로 구성
    - repository interface : 비즈니스로직에 대한 interface
    - provider : presentation Layer의 provider랑 다르며, repository interface와 datasource의 provider 역할
    - model : api로 부터 받는 데이터의 모델링 담당
            : freezed(모든 model에 적용)와 hive(wishListModel에만 적용)을 이용하여 모델링 


2. 앱의 기능
  1) API로 부터 사진 리스트를 받는 기능
    - REST API로 부터 사진 데이터 1000개를 받아서 6개의 그리드 페이지뷰로 홈에서 보여줌
  2) 사진에 대한 상세 정보를 보여주는 기능
    - 홈이나 위시리스트에서 사진을 클릭 시, Galley 정보를 담는 Model을 아규먼트로 전달하여 상세페이지에서 정보 제공
  3) 마음에 드는 사진이나 저장하고 싶은 장소를 위시리스트에 담는 기능
    - 로컬 DB Hive를 활용
    - 상세정보페이지 inistate()시 해당 사진의 contentId에 해당하는 hive 위시리스트가 있는지 확인하고 이를 bool변수 isWishList에 담음
    - 위시리스트 버튼 클릭 로직 : isWishList == true ? removeWishList() : addWishList()


3. 사용한 패키지
  1) http 통신 - Dio
  2) 상태관리 - Riverpod
  3) 로컬 DB - Hive
  4) 앱 로고 생성 - flutter_launcher_icons




ps.
  부족한 점이 많은 코드입니다. 테스트를 떠나서 코드리뷰를 해주시면 감사히 받겠습니다 !
  프로젝트에 대한 문의 : kmsaa@naver.com
