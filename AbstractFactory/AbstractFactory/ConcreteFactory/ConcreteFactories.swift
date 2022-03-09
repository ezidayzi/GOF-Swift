//
//  ConcreteFactories.swift
//  AbstractFactory
//
//  Created by 김윤서 on 2022/03/09.
//

/// 구체적인 제품에 대한 객체를 생성하는 연산을 구현
class FreetierPostViewFactory: PostViewFactory {

    static func postView(for type: PostType) -> PostView {
        switch type {
        case .edit: return FreetierPostEditView()
        case .detail: return FreetierPostDetailView()
        }
    }
}

class PremiumPostViewFactory: PostViewFactory {

    static func postView(for type: PostType) -> PostView {
        switch type {
        case .edit: return PremiumPostEditView()
        case .detail: return PremiumPostDetailView()
        }
    }
}
