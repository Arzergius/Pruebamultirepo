//
//  ViewController.swift
//  SilvaTaraCoreData
//
//  Created by Aidan Silva on 10/05/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //var indexSeleccionado:Int = 0
    var tareas:[Tarea] = []
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let tarea = tareas[indexPath.row]
        //indexSeleccionado = indexPath.row
        //let tarea = tareas[indexPath.row]
        performSegue(withIdentifier: "tareaSeleccionadaSegue", sender: tarea)
    }
    override func viewWillAppear(_ animated: Bool) {
        obtenerTareas()
        tableView.reloadData()
    }
//    func crearTareas() -> [Tarea] {
//      let tarea1 = Tarea()
//      tarea1.nombre = "Estudiar para el examen"
//      tarea1.importante = false
//
//      let tarea2 = Tarea()
//      tarea2.nombre = "Hacer los laboratorios"
//      tarea2.importante = true
//
//
//      let tarea3 = Tarea()
//      tarea3.nombre = "Estudiar para subsa"
//      tarea3.importante = false
//
//      return [tarea1, tarea2, tarea3]
//    }
    
    @IBAction func agregarTarea(_ sender: Any) {
        performSegue(withIdentifier: "agregarSegue", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tareas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let tarea = tareas[indexPath.row]
        if tarea.importante {
           cell.textLabel?.text = "😃\(tarea.nombre!)"
        }else{
           cell.textLabel?.text = "😔\(tarea.nombre!)"
        }
        return cell
    }
    
    func obtenerTareas(){
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do{
            tareas = try context.fetch(Tarea.fetchRequest()) as! [Tarea]
        }catch {
            print("Error al leer entidad CoreData")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       // let siguienteVC = segue.destination as! ViewControllerCrearTarea
      //  siguienteVC.anteriorVC = self
//        if segue.identifier == "agregarSegue" {
//            let siguienteVC = segue.destination as! ViewControllerCrearTarea
//            siguienteVC.anteriorVC = self
//        }
        if(segue.identifier == "tareaSeleccionadaSegue"){
            let siguienteVC = segue.destination as!
                  ViewControllerTareaCompletada
            siguienteVC.tarea = sender as! Tarea
            //iguienteVC.anteriorVC = self
        }
    }

    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource =  self
        tableView.delegate = self
        // Do any additional setup after loading the view.
       // tareas = crearTareas()
    }
    


}

