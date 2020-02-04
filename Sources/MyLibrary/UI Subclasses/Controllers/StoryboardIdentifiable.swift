//
//  StoryboardIdentifiable.swift
//  
//
//  Created by Yura Voevodin on 04.02.2020.
//

import UIKit

protocol StoryboardIdentifiable {
    static var storyboardIdentifier: String { get }
}

extension StoryboardIdentifiable where Self: UIViewController {
    
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}
