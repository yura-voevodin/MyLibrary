//
//  UITableView.swift
//  
//
//  Created by Yura Voevodin on 04.02.2020.
//

#if !os(macOS)
import UIKit

public extension UITableView {

    /// Get IndexPath of row with cell, that contains a view
    ///
    /// - Parameter view: UIView in UITableViewCell
    /// - Returns: IndexPath or nil if not found
    func indexPath(for view: UIView) -> IndexPath? {
        let viewLocation = convert(view.bounds.origin, from: view)
        return indexPathForRow(at: viewLocation)
    }

    func register<T: UITableViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellReuseIdentifier: T.reuseIdentifier)
    }

    func dequeueReusableCell<T: UITableViewCell>(for indexPath: IndexPath) -> T where T: ReusableView {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
}
#endif
