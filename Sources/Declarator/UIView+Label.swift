//
//  File.swift
//  
//
//  Created by Andrey Chernoprudov on 17.04.2021.
//

import UIKit

extension UIView {
    static func text(_ text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        return label
    }
}

extension UILabel {
    func font(_ font: UIFont = UIFont.preferredFont(forTextStyle: .body)) -> UILabel {
        self.font = font
        return self
    }
    
    func lines(_ lines: Int) -> UILabel {
        numberOfLines = lines
        return self
    }
}
