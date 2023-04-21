//
//  main.swift
//  ARC
//
//  Created by Yan Shvyndikov on 18.09.2022.
//

// число ссылок в зоне видемости объекта - одна, как только выходит и зоны видемости - ноль(если нет какой-то другой ссылки на этот объект)
// объект будет жить до тех пор, пока у него есть хотя бы 1 сильная ссылка
// если нужно общаться с объектами - делай слабую ссылку

var playground = true

class Student{
    
    weak var teacher: Teacher? // ссылка на учителя для обмена чем-либо
    
    deinit {
        print("Goodbye Student")
    }
}

class Teacher{
    
    var student: Student?
    
    deinit {
        print("Goodbye Teacher")
    }
}

class Test{
    
    deinit {
        print("Goodbye Test")
    }
}

var student = Student() // не сработал тк не был уничтожен

if playground{
    
    // утечка памяти, и у студента и у учителя по 2 ссылки
    // сначала учистожаем одну у студента, потом у учителя
    // и остается по одной ссылке итог - ни один из объетов не уничтожен
    
    // теперь сделаем слыбую ссылку у учителя, чтобы ее уничтожить
    // для этого используем weak вместе с optional
    // unowned не на опциональном типе используется
    
    
    var teacher = Teacher() // сработал, тк был уничтожен после фигурной скобки
    var test = Test()
    
    if playground{
        var student = Student()
        teacher.student = student
        student.teacher = teacher
    }
    
    print("Exit Playground")
}

print("end")
