//
//  MainPresenter.swift
//  BilyonerCaseStudy
//
//  Created by Merve on 4.09.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol MainPresentationLogic {

    func presentInitializeResult(response: Main.Initialize.Response)
    func presentReloadResult(response: Main.Reload.Response)
    func presentFinalizeResult(response: Main.Finalize.Response)
}

class MainPresenter: MainPresentationLogic {

    // MARK: VIP Protocols

    weak var viewController: MainDisplayLogic?

    init(viewController: MainDisplayLogic) {

        self.viewController = viewController
    }
}

// MARK: - Presentation Logic

extension MainPresenter {

    func presentInitializeResult(response: Main.Initialize.Response) {

        viewController?.displayInitializeResult(viewModel: Main.Initialize.ViewModel())
    }

    func presentReloadResult(response: Main.Reload.Response) {

        viewController?.displayReloadResult(viewModel: Main.Reload.ViewModel())
    }

    func presentFinalizeResult(response: Main.Finalize.Response) {

        viewController?.displayFinalizeResult(viewModel: Main.Finalize.ViewModel())
    }
}
