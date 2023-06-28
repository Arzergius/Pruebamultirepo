//
//  ViewController.swift
//  propuesto5
//
//  Created by Aidan Silva on 17/04/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
               let persona = names[indexPath.row]
               cell.textLabel?.text = persona
               return cell

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableview1.dataSource = self
        tableview1.delegate = self
    }

    @IBOutlet weak var tableview1: UITableView!
    
    let names = [
          "juan",
          "Jorge",
          "Marcelo",
          "Bruno",
          "Rodrigo",
          "Eduardo",
          "Gonzalod",
          "Gilder"
    ]
    
    
}

