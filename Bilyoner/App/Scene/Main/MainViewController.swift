//
//  MainViewController.swift
//  BilyonerCaseStudy
//
//  Created by Merve on 4.09.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol MainDisplayLogic: AnyObject {

    func displayInitializeResult(viewModel: Main.Initialize.ViewModel)
    func displayReloadResult(viewModel: Main.Reload.ViewModel)
    func displayFinalizeResult(viewModel: Main.Finalize.ViewModel)
}

class MainViewController: MainDisplayLogic {

    @IBOutlet weak var collectionView: UICollectionView!

    static var vxStoryboard: Storyboard = .main

    // MARK: VIP Protocols

    var interactor: MainBusinessLogic!
    var router: MainRoutingLogic!

    // MARK: View Life Cycles

}

// MARK: - Display Logic

extension MainViewController {

    func displayInitializeResult(viewModel: Main.Initialize.ViewModel) { }

    func displayReloadResult(viewModel: Main.Reload.ViewModel) { }

    func displayFinalizeResult(viewModel: Main.Finalize.ViewModel) { }
}

extension MainViewController { }
