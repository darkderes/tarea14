//
//  ViewController.swift
//  tarea
//
//  Created by Jorge Darderes on 22-09-15.
//  Copyright © 2015 Jorge Darderes. All rights reserved.
//

import UIKit

 public class ViewController: UIViewController {

    // declaracion de controles de cuadro de textos y etiquetas
    @IBOutlet weak var usuario: UITextField!
    
    @IBOutlet weak var contraseña: UITextField!
    
    @IBOutlet weak var funcio: UILabel!
    
    // variable que obtiene dato de un tipo arreglo del objeto usuarios
    var us = [usuarios]()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        // ingreso de usuarios a nuestro arreglo
        us += [usuarios(name: "jorge", pass: "entrar"),usuarios(name: "jaime", pass:"jaime"),usuarios(name: "alberto", pass: "alberto"),usuarios(name: "bernardo", pass: "bernardo"),usuarios(name: "carlos", pass: "carlos"),usuarios(name: "danilo", pass: "danilo"),usuarios(name: "esteban", pass: "esteban"),usuarios(name: "francisca", pass: "francisca"),usuarios(name: "gabriela", pass: "gabriela"),usuarios(name: "humberto", pass: "humberto")]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
   //funcion que permite la limpieza de los controles del view login
    @IBAction func clear(sender: AnyObject) {
        usuario.text = ""
        contraseña.text = ""
        funcio.text = ""
    }
    func before(value1: String, value2: String) -> Bool {
        // One string is alphabetically first.
        // ... True means value1 precedes value2.
        return value1 < value2;
    }
     public func ordenar(){
           var y = us.sort({$0.name < $1.name})
            
            for dato in y
            {
               
                funcio.text = funcio.text! + " " + dato.name
            }
    
        }
    //funcion que valida usuarios en nuestro arreglo
    @IBAction func validar(sender: AnyObject) {
        
        var esta = false
        
        for recorre in us
        {
            if recorre.getUsuario() == usuario.text && recorre.getPass() == contraseña.text
            {
                esta = true
            }
            
        }
      
        if esta == true
        {
            
            usuario.text = ""
            contraseña.text = ""
            funcio.text  = ""
           ordenar()
          
          /*  let nextView = self.storyboard?.instantiateViewControllerWithIdentifier("nuevaVista") as! segundaVistaController
            
            self.navigationController?.showViewController(nextView, sender: sender)*/
        }
        else
        {
           funcio.text = "Nombre de usuario y/o password incorrectos"
           
        }
        
        
    }
}


