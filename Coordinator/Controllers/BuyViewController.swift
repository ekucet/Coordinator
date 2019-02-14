//
//  BuyViewController.swift
//  Coordinator
//
//  Created by Erkam Kucet on 13.02.2019.
//  Copyright © 2019 Erkam Kucet. All rights reserved.
//

import UIKit

final class BuyViewController: UIViewController, Stroyboarded{
    
    weak var coordinator: MainCoordinator?
    var selectProduct = 0{
        didSet{
            print(selectProduct)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
