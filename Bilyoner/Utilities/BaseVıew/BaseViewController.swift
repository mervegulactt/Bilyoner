//
//  BaseViewController.swift
//  BilyonerCaseStudy (iOS)
//
//  Created by Merve on 5.09.2021.
//

import UIKit

/// Base `NibLoadable` collection view cell
open class BaseCollectionViewCell: UICollectionViewCell, Appliable, Reusable {

    open override func awakeFromNib() {

        super.awakeFromNib()
        applyStyling()
        applyTranslation()
    }

    open func applyStyling() {

    }

    open func applyTranslation() {

    }
}
