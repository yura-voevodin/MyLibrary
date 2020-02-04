//
//  ReusableView.swift
//  
//
//  Created by Yura Voevodin on 04.02.2020.
//

import UIKit

protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
