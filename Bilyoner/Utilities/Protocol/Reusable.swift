//
//  Reusable.swift
//  BilyonerCaseStudy (iOS)
//
//  Created by Merve on 5.09.2021.
//

import UIKit

/// Protocol to conform when supplying a reuse identifier
public protocol Reusable {

    static var reuseIdentifier: String { get }
    var reuseIdentifier: String { get }
}

public extension Reusable {

    static var reuseIdentifier: String {

        return String(describing: self)
    }

    var reuseIdentifier: String {

        return type(of: self).reuseIdentifier
    }
}
