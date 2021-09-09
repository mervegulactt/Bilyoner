//
//  MeditationItemCollectionViewCell.swift
//  BilyonerCaseStudy (iOS)
//
//  Created by Merve on 9.09.2021.
//

import UIKit

struct MeditionItemPresentation: Presentation {

    var meditationName: String?
}

class MeditationItemCollectionViewCell: BaseCollectionViewCell {

    // MARK: Outlets

    @IBOutlet weak var imageMeditation: UIImageView!
    @IBOutlet weak var labelMeditationName: UILabel!

    // MARK: Variables

    var presentation: MeditionItemPresentation? {
        didSet {
            setupUI()
        }
    }

    // MARK: Life Cycle

    override func applyStyling() {
        super.applyStyling()

        labelMeditationName.style = .regular11Black
    }

    override func applyTranslation() {

        super.applyTranslation()
    }

    private func setupUI() {

        guard let presentation = presentation else { return }
        labelMeditationName.text = presentation.meditationName
        imageMeditation.image = UIImage(named: "")
    }
}
