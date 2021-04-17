//
//  UIView+Stacks.swift
//
//  Created by Andrey Chernoprudov on 17.04.2021.
//

import UIKit

extension UIView {
    static func row(
        spacing: CGFloat = 0,
        views: [UIView]
    ) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = .horizontal
        stackView.spacing = spacing
        return stackView
    }
    
    static func column(
        spacing: CGFloat = 0,
        views: [UIView]
    ) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = .vertical
        stackView.spacing = spacing
        
        
        return stackView
    }
}

extension UIStackView {
    func distribution(_ distribution: UIStackView.Distribution) -> Self {
        self.distribution = distribution
        return self
    }
    
    func align(_ alignment: UIStackView.Alignment) -> Self {
        self.alignment = alignment
        return self
    }
    
    func inset(_ inset: UIEdgeInsets) -> Self {
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = inset
        return self
    }
}
