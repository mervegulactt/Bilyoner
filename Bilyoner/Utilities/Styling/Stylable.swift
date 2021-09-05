//
//  Stylable.swift
//  BilyonerCaseStudy (iOS)
//
//  Created by Merve on 4.09.2021.
//

import UIKit

public protocol Style { }

/// Stylable protocol with generic type of `Style`
public protocol Stylable {

    associatedtype StyleType: Style

    var style: StyleType? { get set }
}

/// Wrapper for text styling
public struct TextStyle: Style {

    /// Font style
    public var font: UIFont?

    /// Color style
    public var color: UIColor?

    public init(font: UIFont? = nil, color: UIColor? = nil) {

        self.font = font
        self.color = color
    }
}
