//
//  BaseVıew.swift
//  BilyonerCaseStudy (iOS)
//
//  Created by Merve on 4.09.2021.
//

import UIKit

open class BaseView: UIView, Appliable {

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
