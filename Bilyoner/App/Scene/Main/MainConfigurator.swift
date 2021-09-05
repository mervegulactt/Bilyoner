//
//  MainConfigurator.swift
//  BilyonerCaseStudy
//
//  Created by Merve on 4.09.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

// MARK: - Main Configurator

class MainConfigurator {

    func configure(_ viewController: MainViewController) {

        let worker = MainWorker()
        let presenter = MainPresenter(viewController: viewController)
        let interactor = MainInteractor(presenter: presenter, worker: worker)
        let router = MainRouter(viewController: viewController, dataStore: interactor)

        viewController.interactor = interactor
        viewController.router = router
    }
}
