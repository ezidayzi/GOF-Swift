//
//  PostViewFactory.swift
//  AbstractFactory
//
//  Created by 김윤서 on 2022/03/09.
//

/// 객체를 생성하는 연산으로 인터페이스 정의
protocol PostViewFactory {
    static func postView(for type: PostType) -> PostView
}
