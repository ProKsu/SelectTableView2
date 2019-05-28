//
//  ViewController.swift
//  SelkectTableView
//
//  Created by Ksush Shishk on 23.05.2019.
//  Copyright © 2019 A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  let list = ["1", "2", "3", " 4", ]
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellTableViewCell
        
        cell?.lb.text = list[indexPath.row]
        cell?.img.image = UIImage(named: list[indexPath.row])
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "DataViewController")
 as? DataViewController
        
        vc?.image = UIImage(named: list[indexPath.row])!
        vc?.list = list[indexPath.row]
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}
