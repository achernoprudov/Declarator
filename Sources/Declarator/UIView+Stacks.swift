//
//  File.swift
//  
//
//  Created by Andrey Chernoprudov on 17.04.2021.
//

import UIKit

extension UIView {
    static func row(
        views: [UIView]
    ) -> UIView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = .horizontal
        return stackView
    }
    
    static func column(
        views: [UIView]
    ) -> UIView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = .vertical
        return stackView
    }
}
