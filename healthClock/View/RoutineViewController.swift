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
    
    lazy var tableView : UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.backgroundColor = .white
        return tableView
    }()
    
    lazy var addButton : UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal)
        return button
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
     
        
        let barButton = UIBarButtonItem(customView: addButton)
        self.navigationItem.rightBarButtonItem = barButton
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { (maker) in
            maker.top.bottom.leading.trailing.equalTo(0)
        }
        
        view.backgroundColor = .white
    }
    

}

extension RoutineViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 21
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
}
