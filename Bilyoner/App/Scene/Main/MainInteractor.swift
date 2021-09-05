//
//  MainInteractor.swift
//  BilyonerCaseStudy
//
//  Created by Merve on 4.09.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

protocol MainBusinessLogic {

    func initialize(request: Main.Initialize.Request)
    func reload(request: Main.Reload.Request)
    func finalize(request: Main.Finalize.Request)
}

protocol MainDataStore { }

class MainInteractor: MainBusinessLogic, MainDataStore {

    // MARK: VIP Protocols

    var presenter: MainPresentationLogic
    var worker: MainWorkerLogic

    init(presenter: MainPresentationLogic, worker: MainWorkerLogic) {

        self.presenter = presenter
        self.worker = worker
    }
}

// MARK: - Business Logic

extension MainInteractor {

    func initialize(request: Main.Initialize.Request) {

        presenter.presentInitializeResult(response: Main.Initialize.Response())
    }

    func reload(request: Main.Reload.Request) {

        presenter.presentReloadResult(response: Main.Reload.Response())
    }

    func finalize(request: Main.Finalize.Request) {

        presenter.presentFinalizeResult(response: Main.Finalize.Response())
    }
}
