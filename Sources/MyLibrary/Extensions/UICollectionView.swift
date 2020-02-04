//
//  UICollectionView.swift
//  
//
//  Created by Yura Voevodin on 04.02.2020.
//

#if !os(macOS)
import UIKit

extension UICollectionView {

    /// Get IndexPath of item, that contains a view
    ///
    /// - Parameter view: UIView in UICollectionViewCell
    /// - Returns: IndexPath or nil if not found
    func indexPath(for view: UIView) -> IndexPath? {
        let viewLocation = convert(view.bounds.origin, from: view)
        return indexPathForItem(at: viewLocation)
    }

    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }

    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.reuseIdentifier)")
        }
        return cell
    }
}
#endif
