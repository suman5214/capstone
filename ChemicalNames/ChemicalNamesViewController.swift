//
//  ChemicalNamesViewController.swift
//  ChemicalNames
//
//  Created by admin on 1/28/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class ChemicalNamesViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    var chemicalList = DataProvider.shared.chemicalNames
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Chemicals"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueDetail" {
            let detailVC = segue.destination as! ChemicalDetailViewController
            detailVC.chemical = sender as! Chemical
        }
    }

}

extension ChemicalNamesViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.chemicalList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "chemicalCell", for: indexPath)
        let label = cell.viewWithTag(100) as! UILabel
        let chemicalName = chemicalList[indexPath.row]
        label.text = chemicalName.name
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
        let chemicalName = chemicalList[indexPath.row]
        self.performSegue(withIdentifier: "segueDetail", sender: chemicalName)
    }
}
