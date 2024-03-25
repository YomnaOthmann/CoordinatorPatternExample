//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Mac on 25/03/2024.
//

import Foundation
import UIKit

class ViewController : UIViewController, Coordinating{
    var coordinator: Coordinator?
    let button : UIButton  = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.backgroundColor = .white
        button.setTitle("go to Second", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 20
        button.clipsToBounds = true
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        title = "Home"
        button.center = view.center
        button.addTarget(self, action: #selector(navigate), for: .touchUpInside)
        view.addSubview(button)
    }
    @objc func navigate(){
        coordinator?.eventOccurred(with: .buttonTapped)
    }
}
