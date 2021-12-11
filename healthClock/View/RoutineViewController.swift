//
//  ViewController.swift
//  healthClock
//
//  Created by 박성영 on 2021/12/11.
//

import UIKit
import SnapKit

class RoutineViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var viewModel = RoutineViewModel()
    
    let tableView : UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .white
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(DayRoutineViewCell.classForCoder(), forCellReuseIdentifier: "DayRoutine")
        
    }

    func setUI(){
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.topItem?.title = "Routine"
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { (maker) in
            maker.top.bottom.leading.trailing.equalTo(0)
        }
        
        view.backgroundColor = .white
    }
    

}

extension RoutineViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
}
