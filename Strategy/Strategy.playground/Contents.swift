
/// 전략 인터페이스
protocol PhotoRepository {
    func save()
}

/// 내부 DB에 저장
class RealmPhotoRepository : PhotoRepository {
    func save() {
        print("내부 DB에 저장")
    }
}
/// 서버에 저장
class ServerPhotoRepository : PhotoRepository {
    func save() {
        print("서버에 저장")
    }
}

/// 전략 패턴 클래스를 사용할 주체 클래스
class PhotoUseCase {
    /// 접근점
    private var repository : PhotoRepository?
    
    /// 대체 가능 - DI
    init(repository : PhotoRepository) {
        self.repository = repository
    }
    
    func setRepository(repository : PhotoRepository){
        self.repository = repository
    }
    
    /// 저장
    func save() {
        /// 델리게이트
        /// PhotoUseCase 는 사진을 저장하는 기능을 PhotoRepository 에 위임했다.
        repository?.save()
    }
}

let useCase = PhotoUseCase(repository: RealmPhotoRepository())
useCase.save()
useCase.setRepository(repository: ServerPhotoRepository())
useCase.save()
