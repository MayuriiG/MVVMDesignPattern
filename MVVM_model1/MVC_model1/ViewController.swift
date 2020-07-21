//
//  ViewController.swift
//  MMVM
//
//  Created by Mayurii Gajbhiye on 21/07/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//....................................!!........................

/*Notes :-  view  [UI]
view MOdel      [data related to view ]
Models          [data]

 */

import UIKit

class ViewController: UIViewController {
    
   // var students:[Student] = []
    
    var viewModel = StudentViewModel()
    
    @IBOutlet  weak var studentList:UITableView!        

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addStudent(_ sender: Any) {
        
        
//    let newStudent = Student(nameOfStudent: "Students👩🏻‍🚀 \(students.count +   1)", addOfStudent : "🏚 \(students.count + 1)")
//    students.append(newStudent)
        
        
        viewModel.addStudent(name: "Student👩🏻‍🚀👩🏻‍🚀\(viewModel.students.count+1)", address: "\(viewModel.students.count+1)")
        studentList.reloadData()
    }
    
}



extension ViewController:UITableViewDelegate,UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    

    //Everything is comming from viewMOdel
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.students.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = viewModel.students[indexPath.row].name
        cell?.detailTextLabel!.text = viewModel.students[indexPath.row].address
        
        
        return cell ?? UITableViewCell()
               //if cell is empty
        
    }
    
}

 
//go to storyboard and change the type  = Subtitle
//GIVE IDENTIFIER IN THE tableview cell_identifier row =
