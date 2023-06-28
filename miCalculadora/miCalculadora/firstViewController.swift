//
//  firstViewController.swift
//  miCalculadora
//
//  Created by Aidan Silva on 7/05/23.
//

import UIKit

class firstViewController: UIViewController {
    
    @IBOutlet weak var lblRpta: UILabel!
    @IBOutlet weak var nmbr7: UIButton!
    @IBOutlet weak var nmbr8: UIButton!
    @IBOutlet weak var nmbr9: UIButton!
    @IBOutlet weak var nmbr4: UIButton!
    @IBOutlet weak var nmbr5: UIButton!
    @IBOutlet weak var nmbr6: UIButton!
    @IBOutlet weak var nmbr1: UIButton!
    @IBOutlet weak var nmbr2: UIButton!
    @IBOutlet weak var nmbr3: UIButton!
    @IBOutlet weak var nmbr0: UIButton!
    @IBOutlet weak var operatorAc: UIButton!
    @IBOutlet weak var operatorPlusMinus: UIButton!
    @IBOutlet weak var operatorPercentage: UIButton!
    @IBOutlet weak var operatorDivition: UIButton!
    @IBOutlet weak var operatorMultiplication: UIButton!
    @IBOutlet weak var operatorResta: UIButton!
    @IBOutlet weak var operatorSuma: UIButton!
    @IBOutlet weak var operatorEqual: UIButton!
    @IBOutlet weak var operatorpiriot: UIButton!
    
    @IBAction func actionAc(_ sender: Any) {
    }
    
    @IBAction func actionPlusMinus(_ sender: Any) {
    }
    
    @IBAction func actionPercetage(_ sender: Any) {
    }
    
    @IBAction func actionDivition(_ sender: Any) {
    }
    
    @IBAction func actionMultiplication(_ sender: Any) {
    }
    
    @IBAction func actionResta(_ sender: Any) {
    }
    
    @IBAction func actionSuma(_ sender: Any) {
    }
    
    @IBAction func actionEqual(_ sender: Any) {
    }
    
    @IBAction func actionPiriot(_ sender: Any) {
    }
    
    @IBAction func numberAction(_ sender: UIButton) {
        print(sender.tag)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
