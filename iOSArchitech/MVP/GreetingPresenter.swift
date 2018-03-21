//
//  GreetingPresenter.swift
//  iOSArchitech
//
//  Created by Tushar Vengurlekar on 20/03/18.
//  Copyright © 2018 Tushaar's All rights reserved.
//

import Foundation

class GreetingPresenter : GreetingPresenterProtocol {
    
    unowned let view:GreetingView
    let person:Person
    
    required init(view: GreetingView, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = "Hello" + " " + self.person.firstName + " " + self.person.lastName
        self.view.setGreeting(greeting: greeting)
    }
}
