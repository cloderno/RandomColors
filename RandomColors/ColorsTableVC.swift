//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Rating on 11/28/23.
//

import UIKit

class ColorsTableVC: UIViewController {
    var colors: [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    enum Segues {
        static let toDetail = "ToColorDetailVC"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createRandomColors()
    }
    
    func createRandomColors() {
        for _ in 0..<50 {
            colors.append(UIColor.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // assigning colordetailvc type to let constant
        let destVC = segue.destination as! ColorDetailVC
        destVC.color = sender as? UIColor
    }
}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    // how many rows to show
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    // what to show
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // for rows that are populated, to prevent loading all of the rows
        // use guard to check if it's not empty to not get null value
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segues.toDetail, sender: color)
    }
}
