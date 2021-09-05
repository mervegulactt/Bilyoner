//
//  Parsable.swift
//  BilyonerCaseStudy (iOS)
//
//  Created by Merve on 5.09.2021.
//

import Foundation

public protocol Parsable {

    static func parse(_ data: Data) throws -> Self?
}
