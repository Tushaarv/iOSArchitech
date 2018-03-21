//
//  GreetingViewModel.swift
//  iOSArchitech
//
//  Created by Tushar Vengurlekar on 20/03/18.
//  Copyright © 2018 Tushaar's All rights reserved.
//

import Foundation

class GreetingViewModel : GreetingViewModelProtocol {

    let person: Person

    var greeting: String? {
        didSet {
            self.greetingDidChange?(self)
        }
    }
    
    var greetingDidChange: ((GreetingViewModelProtocol) -> ())?
    
    required init(person: Person) {
        self.person = person
    }
    
    @objc func showGreeting() {
        self.greeting =  "Hello" + " " + self.person.firstName + " " + self.person.lastName
    }
    
}
