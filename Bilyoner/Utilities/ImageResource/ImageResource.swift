//
//  ImageResource.swift
//  BilyonerCaseStudy (iOS)
//
//  Created by Merve on 4.09.2021.
//

import UIKit

// MARK: - ImageResource

protocol ImageResource {

    func resolvePlaceholder() -> UIImage?

    func resolveImageUrl(for size: CGSize) -> String?

    func rawImageUrl() -> String?
}
