//
//  File.swift
//  
//
//  Created by Yura Voevodin on 22.10.2020.
//

import Foundation

extension RandomAccessCollection {
    func element(at index: Index) -> Element? {
        guard indices.contains(index) else {
            return nil
        }

        return self[index]
    }
}
