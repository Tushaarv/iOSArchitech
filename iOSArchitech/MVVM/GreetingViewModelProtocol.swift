//
//  GreetingViewModelProtocol.swift
//  iOSArchitech
//
//  Created by Tushar Vengurlekar on 20/03/18.
//  Copyright © 2018 Tushaar's All rights reserved.
//

import Foundation

protocol GreetingViewModelProtocol: class {
    init(person: Person)

    var greeting: String? { get }
    var greetingDidChange: ((GreetingViewModelProtocol) -> ())? { get set } // function to call when greeting did change
    
    func showGreeting()
}
