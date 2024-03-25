//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Mac on 25/03/2024.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController : UINavigationController?{ get set }
    func start()
    func eventOccurred(with type : Event)
}

enum Event{
    case buttonTapped
}

protocol Coordinating{
    var coordinator : Coordinator?{ get set }
}
