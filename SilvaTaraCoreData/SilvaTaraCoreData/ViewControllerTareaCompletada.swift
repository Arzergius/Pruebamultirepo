//
//  ViewControllerTareaCompletada.swift
//  SilvaTaraCoreData
//
//  Created by Aidan Silva on 14/05/23.
//

import UIKit

class ViewControllerTareaCompletada: UIViewController {

    @IBOutlet weak var tareaLabel: UILabel!
    
    @IBOutlet weak var completarTarea: UIButton!
    
    @IBAction func editarTarea(_ sender: Any) {
        performSegue(withIdentifier: "editarSegue", sender: nil)
        
    }
    
    
    @IBAction func completeTarea(_ sender: Any) {
        //anteriorVC.tareas.remove(at: anteriorVC.indexSeleccionado)
        //anteriorVC.tableView.reloadData()
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(tarea)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController?.popViewController(animated: true)
    }
    var tarea = Tarea()
    //var anteriorVC = ViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        if tarea.importante {
            tareaLabel.text = "😇\(tarea.nombre!)"
        }else{
            tareaLabel.text = tarea.nombre
        }

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
