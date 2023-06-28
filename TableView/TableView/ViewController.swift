//
//  ViewController.swift
//  TableView
//
//  Created by Aidan Silva on 19/04/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate , UITableViewDataSource {
    
    var contenidoCeldas = ["recurso1","recurso2","recurso3"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenidoCeldas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell(style:UITableViewCell.CellStyle.default,reuseIdentifier: "Celda")
        celda.textLabel?.text = contenidoCeldas[indexPath.row]
        return celda
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let recursoSeleccionado = indexPath.row
        self.performSegue(withIdentifier: "pantallaDosSegue", sender: recursoSeleccionado)
        //print("Hizo click en la fila: \(indexPath.row)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pantallaDosSegue"{
            let idrecursoRecibido = sender as! Int
            let pantalla2:ViewController2 = segue.destination as! ViewController2
            pantalla2.recursoRecibido = contenidoCeldas[idrecursoRecibido]
        }
    }
    

    @IBOutlet var Tabla: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Tabla.dataSource = self
        Tabla.delegate = self
        // Do any additional setup after loading the view.
    }

}

