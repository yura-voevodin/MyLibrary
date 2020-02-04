//
//  NibLoadableView.swift
//  
//
//  Created by Yura Voevodin on 04.02.2020.
//

import UIKit

protocol NibLoadableView: class { }

extension NibLoadableView where Self: UIView {

    static var nibName: String {
        return String(describing: self)
    }
}
