//
//  CodableResponse.swift
//  BilyonerCaseStudy (iOS)
//
//  Created by Merve on 5.09.2021.
//

import Foundation

public protocol CodableModel: Decodable { }

public protocol CodableResponse: Decodable, Parsable { }

public struct CoreResponse: CodableResponse { }
