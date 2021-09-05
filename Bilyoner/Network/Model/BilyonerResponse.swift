//
//  BilyonerResponse.swift
//  BilyonerCaseStudy (iOS)
//
//  Created by Merve on 5.09.2021.
//

import UIKit

// MARK: - Welcome

struct Welcome: CodableResponse {

    var meditations: [Meditation]?
    var stories: [Story]?
}

// MARK: - Meditation

struct Meditation: CodableModel {

    var title, subtitle: String?
    var image: Image?
    var releaseDate, content: String?
}

// MARK: - Image

struct Image: CodableModel {

    var small, large: String?
}

// MARK: - Story

struct Story: CodableModel {

    var name, category: String?
    var image: Image?
    var date, text: String?
}
