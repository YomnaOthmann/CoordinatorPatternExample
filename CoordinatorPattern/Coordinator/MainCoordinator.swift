//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Mac on 25/03/2024.
//

import Foundation
import UIKit
class MainCoordinator : Coordinator{
    var navigationController: UINavigationController?
    
    func start() {
        var vc : UIViewController & Coordinating = ViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false)
    }
    
    func eventOccurred(with type: Event) {
        switch type{
        case .buttonTapped:
            var vc : UIViewController & Coordinating = SecondViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
}
