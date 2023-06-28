//
//  FirstViewController.swift
//  UsodeControlesSilva
//
//  Created by Aidan Silva on 3/05/23.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //   super.viewDidLoad()
    @IBOutlet weak var txtNUmero1: UITextField!
    
    @IBOutlet weak var txtNUmero2: UITextField!
    
    @IBOutlet weak var txtRpta: UITextField!
    
    @IBAction func btnSumar(_ sender: Any) {
        if Double(txtNUmero1.text!) != nil , Double(txtNUmero2.text!) != nil {
            nro1 = Double(txtNUmero1.text!)!
            nro2 = Double(txtNUmero2.text!)!
            rpta = nro1 + nro2
            txtRpta.text = String(rpta)
        }else{
            print("Error xd")
        }
    }
    
    
    
    var nro1:Double = 0
    var nro2:Double = 0
    var rpta:Double = 0
    
    
    func Limpiar(){
        self.txtNUmero1.text = "0"
        self.txtNUmero2.text = "0"
        self.txtRpta.text = "0"
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
