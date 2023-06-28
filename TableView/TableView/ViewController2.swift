//
//  ViewController2.swift
//  TableView
//
//  Created by Aidan Silva on 19/04/23.
//

import UIKit

class ViewController2: UIViewController {
    var recursoRecibido:String?
    @IBOutlet var vistaWeb: UIWebView!
    func mostrarRecurso(){
        let direccionRecurso = URL(fileURLWithPath: Bundle.main.path(forResource: recursoRecibido, ofType: "pdf", inDirectory: "RECURSOS")!)
        let datos = try? Data(contentsOf: direccionRecurso)
        vistaWeb.load(datos!,mimeType: "application/pdf",textEncodingName: "utf-8",baseURL: direccionRecurso)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mostrarRecurso()
        //labelTitulo.text = recursoRecibido!

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var labelTitulo: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
