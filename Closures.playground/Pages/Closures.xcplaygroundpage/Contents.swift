//: [Previous](@previous)

var multiplyClosure = { (a: Int, b: Int) -> Int in
    return a * b
}

let result = multiplyClosure(10, 10)

// Cокращение
// Можно все перебирать начиная с нуля
multiplyClosure = {
    $0 * $1
}

//

func operateOnNumbers(_ a: Int, _ b: Int,
                      operation: (Int, Int) -> Int) -> Int {
  let result = operation(a, b)
  print(result)
  return result
}

let addClosure = { (a: Int, b: Int) in
    a + b
}

operateOnNumbers(10, 10, operation: addClosure)

operateOnNumbers(10, 10, operation: { (a: Int, b: Int) in
    a * b
})

operateOnNumbers(10, 10, operation: { $0 - $1 })


