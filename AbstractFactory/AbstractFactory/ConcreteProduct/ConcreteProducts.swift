//
//  ConcreteProducts.swift
//  AbstractFactory
//
//  Created by 김윤서 on 2022/03/09.
//

import UIKit

/// 구체적으로 팩토리가 생성할 객체를 정의하고 AbstractProduct가 정의하는 인터페이스를 구현
class FreetierPostEditView: UIView, PostView {
    var onComplete: (() -> Void)?

    /// Freetier-oriented features
}

class FreetierPostDetailView: UIView, PostView {
    var onComplete: (() -> Void)?

    /// Freetier-oriented features
}

class PremiumPostEditView: UIView, PostView {
    var onComplete: (() -> Void)?

    /// Premium-oriented features
}

class PremiumPostDetailView: UIView, PostView {
    var onComplete: (() -> Void)?

    /// Premium-oriented features
}
