//
//  MeditationCollectionCell.swift
//  BilyonerCaseStudy (iOS)
//
//  Created by Merve on 3.09.2021.
//

import UIKit

protocol MeditationCollectionCellDelegate: AnyObject {

    func meditationCell(_ sender: MeditationCollectionCell, didSelectItemAtIndex index: Int)
}

struct NextMatchesCollectionCellPresentation: Presentation {

    var id: Int
    var cellPresentations: [MeditationItemPresentetain]
}

class MeditationCollectionCell: BaseCollectionViewCell {

    // MARK: Outlets
    @IBOutlet weak var collectionView: UICollectionView!

    // MARK: Variables

    weak var delegate: MeditationCollectionCellDelegate?
    var presentation: NextMatchesCollectionCellPresentation? {
        didSet {
            setupUI()
        }
    }

    private var itemPresentations: [MeditationItemPresentetain] = []

    // MARK: Life Cycle

    override func applyStyling() {

        super.applyStyling()
        collectionView.register(
            MeditationCollectionCell.self,
            forCellWithReuseIdentifier: MeditationCollectionCell.reuseIdentifier
        )
    }

    override func applyTranslation() {

        super.applyTranslation()
    }

    private func setupUI() {

        guard let presentation = presentation else { return }

        itemPresentations = presentation.cellPresentations
        collectionView.reloadData()
    }
}
