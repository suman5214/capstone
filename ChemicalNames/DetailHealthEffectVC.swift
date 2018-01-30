//
//  DetailHealthEffectVC.swift
//  ChemicalNames
//
//  Created by admin on 1/28/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit
class HealthEffect {
    var hazard :Hazard!
    var riskLevel: RiskLevel!
    init(hazard: Hazard, riskLevel: RiskLevel) {
        self.hazard = hazard
        self.riskLevel = riskLevel
    }
}
class DetailHealthEffectVC: UIViewController {
    var chemical: Chemical!
    @IBOutlet var tableview: UITableView!
    var acuteList = [HealthEffect]()
    var chronicList = [HealthEffect]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let summary = DataProvider.shared.summary_list.filter{
            $0.chemical_ID == self.chemical.id
        }
        
        let hazard_id_array: [Int] = (summary.first?.hazard_ID.components(separatedBy: ",").map  { Int($0)!})!
        let hazardList = DataProvider.shared.hazardList.filter {
            hazard_id_array.contains($0.id)
        }

        let risk_id_array: [Int] = (summary.first?.riskLevel_ID.components(separatedBy: ",").map  { Int($0)!})!
        let riskLevelList = DataProvider.shared.riskLevelList.filter {
            risk_id_array.contains($0.id)
        }
        
        var healthEffetsList = [HealthEffect]()
        var index = 0
        for hazard in hazardList {
            let riskLevel = riskLevelList[index]
            healthEffetsList.append(HealthEffect(hazard: hazard, riskLevel: riskLevel))
            index += 1
        }

        acuteList = healthEffetsList.filter {
            $0.hazard.term == "Short Term"
        }
        
        chronicList = healthEffetsList.filter {
            $0.hazard.term == "Long Term"
        }
        
        
        let dummyViewHeight = CGFloat(70)
        self.tableview.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: self.tableview.bounds.size.width, height: 70))
        self.tableview.contentInset = UIEdgeInsetsMake(-dummyViewHeight, 0, -35, 0)
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension DetailHealthEffectVC: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return self.acuteList.count
        } else {
            return self.chronicList.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hazardCell", for: indexPath) as! HealthTableViewCell
        if indexPath.section == 0 {
            let healthEffect = self.acuteList[indexPath.row]
            cell.setData(healthEffect: healthEffect)
        } else {
            let healthEffect = self.chronicList[indexPath.row]
            cell.setData(healthEffect: healthEffect)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableCell(withIdentifier: "hazardHeader")

        let label = headerView?.viewWithTag(100) as! UILabel
        var titleString = ""
        if section == 0 {
            titleString = "Potential Acute Health Effects"
        } else {
            titleString = "Potential Chronic Health Effects"
        }
        label.text = titleString
        return headerView
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: self.tableview.bounds.size.width, height: 35))
        footerView.backgroundColor = UIColor.white
        return footerView
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.roundCorners([.topLeft, .topRight], radius: 10 , borderWidth: 2, color: UIColor.black)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.addBorder(toSide: .Left, withColor: UIColor.black.cgColor, andThickness: 1)
        cell.addBorder(toSide: .Right, withColor: UIColor.black.cgColor, andThickness: 1)
        var count = 0
        if indexPath.section == 0 {
            count = self.acuteList.count
        } else {
            count = self.chronicList.count
        }
        if indexPath.row < count - 2 {
            cell.addBorder(toSide: .Bottom, withColor: UIColor.black.cgColor, andThickness: 1)
        } else if (indexPath.row == count-1) {
            cell.roundCorners([.bottomLeft, .bottomRight], radius: 10, borderWidth: 2, color: UIColor.black)
        }
    }
}

