func calculateArea(length: Double, width: Double) -> Double {
    return length * width
}

let area = calculateArea(length: 10, width: 5)
print(area) // Output: 50.0

//Incorrect usage of optional parameters 
func calculateVolume(length: Double, width: Double, height: Double? = nil) -> Double {
    guard let height = height else {
        return length * width // Return area if height is nil
    }
    return length * width * height
}

let volume1 = calculateVolume(length: 10, width: 5, height: 2)
print(volume1) //Output: 100.0

// This will cause issues due to nil value
let volume2 = calculateVolume(length: 10, width: 5)
print(volume2) //Output: 50.0 

// Solution is to provide a default value or handle nil cases differently