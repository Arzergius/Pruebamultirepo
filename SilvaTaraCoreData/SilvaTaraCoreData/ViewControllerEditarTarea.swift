//
//  ViewControllerEditarTarea.swift
//  SilvaTaraCoreData
//
//  Created by Aidan Silva on 14/05/23.
//

import UIKit

class ViewControllerEditarTarea: UIViewController {

    @IBOutlet weak var nuevaTarea: UITextField!
    
    @IBOutlet weak var tareaLabel: UILabel!
    
    @IBAction func guardarNT(_ sender: Any) {
    }
    var tarea = Tarea()
    override func viewDidLoad() {
        super.viewDidLoad()
        tareaLabel.text = tarea.nombre!

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
