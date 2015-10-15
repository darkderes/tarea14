//
//  tareaTests.swift
//  tareaTests
//
//  Created by Jorge Darderes on 22-09-15.
//  Copyright © 2015 Jorge Darderes. All rights reserved.
//

import XCTest
@testable import tarea

class tareaTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
      //  XCTAssert(true,"Pass")
        //  XCTFail("prueba fallida")
      //  XCTAssertEqual(usuarios(name: "jorge",pass: "entrar" ).getUsuario(),"jorge","probando devolucion nombre de usuario")
       //  XCTAssertEqual(usuarios(name: "jorge",pass: "entrar" ).getPass(),"entrar","probando devolucion password")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        //funcion prueba de ejecucion de
            var us = [usuarios]()
            for(var i = 0;i<10;i++)
            {
            var y = us.sort({$0.name < $1.name})
            }
            
        }
    }
    
}
