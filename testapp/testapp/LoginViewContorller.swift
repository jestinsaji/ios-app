//
//  ViewController.swift
//  testapp
//
//  Created by Apps Team Mac book Air on 26/08/21.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var txtname: UITextField!
    @IBOutlet var txtpassword: UITextField!
    @IBOutlet var btnlogin: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    override func viewDidDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false

    }
    @IBAction func onClickLogin(_ sender: Any) {
        
        //let TableViewController = UIStoryboard(name: "TableViewController", bundle: nil).instantiateViewController (withIdentifier: "TableViewController") as! TableViewController
        let TableViewController = UIStoryboard(name: "TableViewController", bundle: nil).instantiateViewController (withIdentifier: "TableViewController") as! TableViewController

        
        
        
        
        
        //let TableViewController = storyboard?.instantiateViewController(identifier: "TableViewController")
        self.navigationController?.pushViewController(TableViewController, animated: false)
    }
    
}
//         let TableViewController = UIStoryboard(name: "TableViewController", bundle: nil).instantiateViewController (withIdentifier: "TableViewController") as! TableViewController

