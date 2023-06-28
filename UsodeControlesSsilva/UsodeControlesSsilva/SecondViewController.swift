//
//  SecondViewController.swift
//  UsodeControlesSsilva
//
//  Created by Aidan Silva on 7/05/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var controlSegmento: UISegmentedControl!
    
    @IBOutlet weak var txtNumero1: UITextField!
    
    @IBOutlet weak var txtNumero2: UITextField!
    
    @IBOutlet weak var lblRespuesta: UILabel!
    
    var nro1:Double = 0
    var nro2:Double = 0
    
    @IBAction func elegitSegmento(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            let opcion = controlSegmento.selectedSegmentIndex
            switch opcion {
            case 0:
                lblRespuesta.text=Operacion(n1: nro1, n2: nro2, op: "+")
            case 1:
                lblRespuesta.text=Operacion(n1: nro1, n2: nro2, op: "-")
            case 2:
                lblRespuesta.text=Operacion(n1: nro1, n2: nro2, op: "*")
            case 3:
                lblRespuesta.text=Operacion(n1: nro1, n2: nro2, op: "/")
            default:
                lblRespuesta.text = "Error"
            }
        }else{
            lblRespuesta.text = "Error"
        }
    }
    
    func Operacion(n1:Double,n2:Double,op:String) -> String{
        switch op{
        case "+":
            return String( n1 + n2 )
        case "-":
            return String( n1 - n2 )
        case "/":
            return String( n1 / n2 )
        case "*":
            return String( n1 * n2 )
        default:
            return "Error"
        }
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
