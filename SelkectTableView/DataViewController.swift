//
//  DataViewController.swift
//  SelkectTableView
//
//  Created by Ksush Shishk on 23.05.2019.
//  Copyright © 2019 A. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    var image = UIImage()
    var list = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       lbl.text = " You selected \(list) "
        img.image = image

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickConnect(_ sender: Any) {
        
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
