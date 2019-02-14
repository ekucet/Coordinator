//
//  MainCoordinator.swift
//  Coordinator
//
//  Created by Erkam Kucet on 13.02.2019.
//  Copyright © 2019 Erkam Kucet. All rights reserved.
//

import UIKit

final class MainCoordinator: Coordinator{
    
    var childCoordinators: [Coordinator] = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        let vc = ViewController.instantiate()
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func buy(at product: Int){
        let vc = BuyViewController.instantiate()
        vc.selectProduct = product
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func createAccount(){
        let child = CreateAccountCoordinator(navigationController: navigationController)
        childCoordinators.append(child)
        child.parentCoordinator = self
        child.start()
    }
}
