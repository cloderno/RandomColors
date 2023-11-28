//
//  ColorDetailVC.swift
//  RandomColors
//
//  Created by Rating on 11/28/23.
//

import UIKit

class ColorDetailVC: UIViewController {
    // optional because we are waiting to receive the data
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = color ?? .black
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
