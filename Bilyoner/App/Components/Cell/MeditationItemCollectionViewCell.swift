//
//  MeditationItemCollectionViewCell.swift
//  BilyonerCaseStudy (iOS)
//
//  Created by Merve on 3.09.2021.
//

import UIKit

struct MeditationItemPresentetain: Presentation {

    var title: String?
    var image: ImageResource?
}

class MeditationItemCollectionViewCell: BaseCollectionViewCell {


    // MARK: Outlets

    @IBOutlet weak var labelMeditasionName: UILabel!
    @IBOutlet weak var imageMeditasion: UIImageView!

    // MARK: Variables

    var presentation: MeditationItemPresentetain? {
        didSet {
            setupUI()
        }
    }

    // MARK: Life Cycle

    override func applyStyling() {

        super.applyStyling()
        labelMeditasionName.style = .regular11Black
    }

    override func applyTranslation() {

        super.applyTranslation()
    }

    private func setupUI() {

        labelMeditasionName.text = presentation?.title

        // image loader protocolünü eklemediğim içim eksik.
        // imageLoader.loadImage(to: imageMeditasion, from: presentation?.image, quality: .automatic)
    }
}
