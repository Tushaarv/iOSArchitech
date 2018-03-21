//
//  MVPViewController.swift
//  iOSArchitech
//
//  Created by Tushar Vengurlekar on 20/03/18.
//  Copyright © 2018 Tushaar's All rights reserved.
//

import UIKit

class MVPViewController: UIViewController, GreetingView {

    @IBOutlet weak var labelGreeting: UILabel!
    @IBOutlet weak var buttonGreeting: UIButton!
    
    var presenter: GreetingPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.buttonGreeting.addTarget(self, action: #selector(MVCViewController.didTapButton), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Assembling of MVP
        let model = Person(firstName: "David", lastName: "Blaine")
        self.presenter = GreetingPresenter(view: self, person: model)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func didTapButton() {
        self.presenter.showGreeting()
    }
    
    func setGreeting(greeting: String) {
        self.labelGreeting.text = greeting
    }
}

