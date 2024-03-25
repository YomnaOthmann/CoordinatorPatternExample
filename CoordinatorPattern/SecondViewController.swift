//
//  SecondViewController.swift
//  CoordinatorPattern
//
//  Created by Mac on 25/03/2024.
//

import UIKit

class SecondViewController: UIViewController, Coordinating {

    var coordinator : Coordinator?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        title = "Second Screen"
    }

    


}
