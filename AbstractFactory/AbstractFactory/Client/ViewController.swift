//
//  ViewController.swift
//  AbstractFactory
//
//  Created by 김윤서 on 2022/03/09.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        /// AbstarctFactory와 AbstractProduct 클래스에 선언된 인터페이스를 사용한다.

        #if Freetier
        let factory = FreetierPostViewFactory.self
        #else
        let factory = PremiumPostViewFactory.self
        #endif
        
        /// Client
        // Create Edit view
        var postEditView = factory.postView(for: .edit)
        postEditView.onComplete = {
            // detach view
        }
        
        // Create Detail view
        var postDetailView = factory.postView(for: .detail)
        postDetailView.onComplete = {}
    }
    
}

