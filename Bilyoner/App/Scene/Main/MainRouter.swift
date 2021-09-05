//
//  MainRouter.swift
//  BilyonerCaseStudy
//
//  Created by Merve on 4.09.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol MainRoutingLogic { }

protocol MainDataPassing {

    var dataStore: MainDataStore { get }
}

class MainRouter: MainRoutingLogic, MainDataPassing {

    weak var viewController: MainViewController?
    var dataStore: MainDataStore

    init(
        viewController: MainViewController,
        dataStore: MainDataStore
    ) {

        self.viewController = viewController
        self.dataStore = dataStore
    }

    // MARK: Routing
}
