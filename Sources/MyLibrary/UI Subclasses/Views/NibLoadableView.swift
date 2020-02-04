//
//  NibLoadableView.swift
//  
//
//  Created by Yura Voevodin on 04.02.2020.
//

#if !os(macOS)
import UIKit

public protocol NibLoadableView: class { }

public extension NibLoadableView where Self: UIView {

    static var nibName: String {
        return String(describing: self)
    }
}
#endif
