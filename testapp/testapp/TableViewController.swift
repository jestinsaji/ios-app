//
//  secondViewController.swift
//  testapp
//
//  Created by Apps Team Mac book Air on 26/08/21.
//

import UIKit

class TableViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView : UITableView!
    
    let myData = ["one","two","three","four","five"]
    let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
    let toys = ["image1","image2","image3","image4","image5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName:"DemoTableViewCell", bundle: nil), forCellReuseIdentifier: "DemoTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath)as! DemoTableViewCell
        
        cell.myLabel.text = myData[indexPath.row]
        cell.myImageView.image = UIImage(named: toys[indexPath.row] )
        return cell
    }


}
