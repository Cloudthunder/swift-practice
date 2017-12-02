//
//  skool.swift
//  swift practice
//
//  Created by UCode on 12/2/17.
//  Copyright © 2017 Kevin Chen. All rights reserved.
//

import Foundation

class Student : Person{
    
    let id : Int
    var gpa: Double
    
    override init() {
         id = 0;
         gpa = 0;
        super.init()    }
    
    override var  description : String{
        return "\(name) (id:\(id)) with GPA \(gpa)"
    }
    
}

func schoolProgram(){
    let myStudent = Student()
    
    print(myStudent)
}

class Teacher : CustomStringConvertible{
    var name : String
    
    init() {
        name = "Mr. Human"
    }
    
    var description : String{
        return "My name is \(name)"
    }
    
}

class Person : CustomStringConvertible {
    var name : String
    
    init() {
        name = "Name"
    }
    
    var description : String{
        return "\(name)"
    }
    
}

class Class: CustomStringConvertible {
    var students : [Student]
    
    
    var subject : String
    var id : Int
    var teacher : Teacher
    
    
    init() {
        subject = "Human Science"
        id = 1
        teacher = Teacher()
        students = [Student]()
    }
    
    var description : String{
        return "The subject is \(subject), class Id is \(id), and the teacher is \(teacher) "
    }
}
