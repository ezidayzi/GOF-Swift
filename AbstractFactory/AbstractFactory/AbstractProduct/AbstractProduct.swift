//
//  AbstractProduct.swift
//  AbstractFactory
//
//  Created by 김윤서 on 2022/03/09.
//

/// 개념적 제품 객체에 대한 인터페이스를 정의
protocol PostView {
    var onComplete: (() -> Void)? { get set }
}

enum PostType {
    case edit
    case detail
}
