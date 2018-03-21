//
//  GreetingPresenter.swift
//  iOSArchitech
//
//  Created by Tushar Vengurlekar on 20/03/18.
//  Copyright © 2018 Tushaar's All rights reserved.
//

import Foundation

protocol GreetingPresenterProtocol {
    init(view: GreetingView, person: Person)
    func showGreeting()
}
