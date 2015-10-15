//
//  segundaVistaController.swift
//  tarea
//
//  Created by Jorge Darderes on 22-09-15.
//  Copyright © 2015 Jorge Darderes. All rights reserved.
//

import UIKit

class segundaVistaController: UIViewController {
       var us = [usuarios]()

    @IBOutlet weak var mostrar: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        listar()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    //funcion de boton salir 
    @IBAction func salir(sender: AnyObject) {
        //exit(0)
        listar()
    }
    
   /* func ordenar()->NSArray{
        
        lista_usuario.sort() {$0.name < $1.name}
        return lista_usuario
    }*/
    func listar(){
        
        for uno in us
        {
            mostrar.text = mostrar.text!+uno.name
        }
    
    }
}
