//
//  ViewController.swift
//  iOSArchitech
//
//  Created by Tushar Vengurlekar on 20/03/18.
//  Copyright © 2018 Tushaar's All rights reserved.
//

import UIKit

// View + Controller
class MVCViewController: UIViewController {

    @IBOutlet weak var labelGreeting: UILabel!
    @IBOutlet weak var buttonGreeting: UIButton!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.buttonGreeting.addTarget(self, action: #selector(MVCViewController.didTapButton), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Assembling of MVC
        let model = Person(firstName: "David", lastName: "Blaine")
        self.person = model
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func didTapButton() {
        let greeting = "Hello" + " " + self.person.firstName + " " + self.person.lastName
        self.labelGreeting.text = greeting

    }
}

