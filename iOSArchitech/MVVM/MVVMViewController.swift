//
//  MVVMViewController.swift
//  iOSArchitech
//
//  Created by Tushar Vengurlekar on 20/03/18.
//  Copyright © 2018 Tushaar's. All rights reserved.
//

import UIKit

class MVVMViewController: UIViewController {

    @IBOutlet weak var labelGreeting: UILabel!
    @IBOutlet weak var buttonGreeting: UIButton! 
    
    var viewModel: GreetingViewModelProtocol! {
        didSet {
            self.viewModel.greetingDidChange = { [unowned self] viewModel in
                self.labelGreeting.text = viewModel.greeting
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Assembling of MVP
        let model = Person(firstName: "David", lastName: "Blaine")
        self.viewModel = GreetingViewModel(person: model)
        
        self.buttonGreeting.addTarget(self.viewModel, action: #selector(GreetingViewModel.showGreeting), for: .touchUpInside)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
