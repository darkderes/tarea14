//
//  usuarios.swift
//  tarea
//
//  Created by Jorge Darderes on 22-09-15.
//  Copyright © 2015 Jorge Darderes. All rights reserved.
//

import UIKit
//clase usuario
public class usuarios
{
    //creacion de variables
    var name : String
    var pass : String
    
    //iniciacion de variables
    public init(name: String,pass: String)
    {
        self.name = name
        self.pass = pass
    }
    // retorno de nombre de usuario
    public func getUsuario() -> String
    {
        return name
    }
    //retorna contraseña de usuario
   public func getPass() -> String
    {
        return pass
    }
    
}
