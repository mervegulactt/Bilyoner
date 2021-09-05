//
//  Styling.swift
//  BilyonerCaseStudy (iOS)
//
//  Created by Merve on 4.09.2021.
//

import UIKit

// MARK: - UILabel + Stylable

extension UILabel: Stylable {

    public var style: TextStyle? {
        get {
            return TextStyle(font: font, color: textColor)
        }
        set {
            font = newValue?.font
            textColor = newValue?.color
        }
    }
}
