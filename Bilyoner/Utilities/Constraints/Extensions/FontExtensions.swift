//
//  FontExtensions.swift
//  BilyonerCaseStudy (iOS)
//
//  Created by Merve on 4.09.2021.
//

import UIKit

enum FontFamily: String {

    case helvetica = "HelveticaNeue"
    case barlow = "Barlow"
}

enum FontType: String {

    case `default` = ""
    case regular = "-Regular"

    func getFontName(for family: FontFamily) -> String {

        return family.rawValue + rawValue
    }
}

extension UIFont {

    class func font(with family: FontFamily = .barlow, type: FontType, size: CGFloat) -> UIFont {

        return UIFont(name: type.getFontName(for: family), size: size)!
    }

    class func regular(with size: CGFloat, family: FontFamily = .barlow) -> UIFont {

        switch family {
        case .helvetica:
            return font(with: family, type: .default, size: size)
        default:
            return font(with: family, type: .regular, size: size)
        }
    }
}
