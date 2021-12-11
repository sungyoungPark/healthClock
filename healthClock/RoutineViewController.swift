//
//  ViewController.swift
//  healthClock
//
//  Created by 박성영 on 2021/12/11.
//

import UIKit

class RoutineViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.topItem?.title = "Routine"
        
        view.backgroundColor = .white
    }


}

