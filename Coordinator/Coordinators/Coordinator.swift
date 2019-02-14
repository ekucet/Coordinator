//
//  Coordinator.swift
//  Coordinator
//
//  Created by Erkam Kucet on 13.02.2019.
//  Copyright © 2019 Erkam Kucet. All rights reserved.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}
