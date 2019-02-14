//
//  ViewController.swift
//  Coordinator
//
//  Created by Erkam Kucet on 13.02.2019.
//  Copyright © 2019 Erkam Kucet. All rights reserved.
//

import UIKit

final class ViewController: UIViewController, Stroyboarded {

    @IBOutlet weak var product: UISegmentedControl!
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buy(_ sender: Any){
        coordinator?.buy(at: product.selectedSegmentIndex)
    }
    
    @IBAction func createAccount(_ sender: Any){
        coordinator?.createAccount()
    }
}

