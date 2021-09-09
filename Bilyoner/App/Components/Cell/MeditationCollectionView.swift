//
//  MeditationCollectionViewController.swift
//  BilyonerCaseStudy (iOS)
//
//  Created by Merve on 9.09.2021.
//

import UIKit

protocol MeditationCollectionCellDelegate: AnyObject {

    func meditationCell(_ sender: MeditationCollectionViewController, didSelectItemAtIndex index: Int)
}

struct MeditationPresentation: Presentation {

    var itemCells: [MeditionItemPresentation]
}

class MeditationCollectionViewController: BaseCollectionViewCell {

    @IBOutlet var collectionView: UICollectionView!

    // MARK: Variables

    weak var delegate: MeditationCollectionCellDelegate?
    var presentation: MeditationPresentation? {
        didSet {
            setupUI()
        }
    }

    private var itemPresentations: [MeditionItemPresentation] = []

    override func applyStyling() {

        super.applyStyling()
        collectionView.register(
            MeditationItemCollectionViewCell.self,
            forCellWithReuseIdentifier: "MeditationItemCollectionViewCell"
        )
    }

    override func applyTranslation() {

        super.applyTranslation()
    }

    private func setupUI() {

        presentation?.itemCells = itemPresentations
    }
}

extension MeditationCollectionViewController: UICollectionViewDataSource, UICollectionViewDelegate {

    func numberOfSections(in collectionView: UICollectionView) -> Int {

        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return itemPresentations.count
    }

    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {

        let cell: MeditationItemCollectionViewCell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "MeditationItemCollectionViewCell",
            for: indexPath
        ) as! MeditationItemCollectionViewCell
        cell.presentation = itemPresentations[indexPath.item]
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        delegate?.meditationCell(self, didSelectItemAtIndex: indexPath.item)
    }
}
