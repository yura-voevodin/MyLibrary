//
//  Collection.swift
//  
//
//  Created by Yura Voevodin on 04.02.2020.
//

import Foundation

public extension Collection {

    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
