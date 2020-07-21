//
//  ViewModel.swift
//  MVC_model1
//
//  Created by Mayurii Gajbhiye on 21/07/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import Foundation

class StudentViewModel{
    
    var students:[Student] = []
    
    
    func addStudent(name:String,address:String){
                   //.....access the Student.swift .................
    let x = Student(nameOfStudent: name, addOfStudent: address)
     
        students.append(x)
    }
 
}
