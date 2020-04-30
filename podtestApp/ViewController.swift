//
//  ViewController.swift
//  podtestApp
//
//  Created by 石田悠 on 2020/04/29.
//  Copyright © 2020 yuu.ishida. All rights reserved.
//

import UIKit
import PKHUD
import SCLAlertView

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    private let table = UITableView()
    
    override func viewDidLoad() {
         super.viewDidLoad()
        view.addSubview(table)
        table.frame = view.bounds
         table.delegate = self
         table.dataSource = self
         //HUD.show(.progress, onView: view)
         
         
         //DispatchQueue.main.asyncAfter(deadline: .now()+2 ){
           //  HUD.hide {(_) in
             //    HUD.flash(.success,onView: self.view)
             //}
         }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Tap for alert"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0 {
            SCLAlertView().showSuccess("Success", subTitle: "良くできました")
        }
        else if indexPath.row == 1 {
            SCLAlertView().showError("Error", subTitle: "良くできました")
        }
        else if indexPath.row == 2 {
            SCLAlertView().showInfo("Info", subTitle: "良くできました")
        }
        else if indexPath.row == 3 {
            SCLAlertView().showEdit("Edit", subTitle: "良くできました")
        }
        else if indexPath.row == 4 {
            SCLAlertView().showWarning("Warn", subTitle: "良くできました")
        }
    }
}
