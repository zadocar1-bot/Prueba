//
//  ViewController.swift
//  2026
//
//  Created by DEVELOP03 on 30/10/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Imagen: UIImageView!
    
    @IBOutlet weak var Etiqueta: UILabel!
    
    @IBOutlet weak var Res: UILabel!
    @IBOutlet weak var Respuesta: UITextField!
    let listaDeElementos = ["realMadrid", "barcelona", "valencia", "liverpool"]
    let nombreDeElementos = ["Real Madrid", "Barcelona", "Valencia", "Liverpool"]
    var elementosIndice = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        actualizaElemento()
    }

    
    @IBAction func mostrar(_ sender: Any) {
        Etiqueta.text = listaDeElementos[elementosIndice]
    }
    
    @IBAction func siguiente(_ sender: Any) {
    
        elementosIndice += 1
        
        if (elementosIndice >= listaDeElementos.count){
            elementosIndice=0
        }
    
        actualizaElemento()
        
    }
    

    func actualizaElemento(){
        Etiqueta.text = "?"
 
        let nombreDelElemento = listaDeElementos[elementosIndice]
    
        let laImagen = UIImage(named: nombreDelElemento)
        Imagen.image = laImagen
        
    }
    
    
    @IBAction func comparar(_ sender: Any) {
        if let cadena = Respuesta.text{
            if cadena == nombreDeElementos[elementosIndice]{
                    print("Igual")
            }else{
                print("Incorrecto")
            }
        }
    }
    

    
}


