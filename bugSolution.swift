func calculateArea(length: Double, width: Double) -> Double {
    return length * width
}

let area = calculateArea(length: 10, width: 5)
print(area) // Output: 50.0

//Corrected usage of optional parameters. The function will either return a default value or throw an error depending on the usage. 
func calculateVolume(length: Double, width: Double, height: Double? = 0) -> Double {
    return length * width * height
}

let volume1 = calculateVolume(length: 10, width: 5, height: 2)
print(volume1) //Output: 100.0

// This will not cause issues anymore
let volume2 = calculateVolume(length: 10, width: 5)
print(volume2) //Output: 0.0

func calculateVolumeWithErrorHandling(length: Double, width: Double, height: Double?) throws -> Double {
    guard let height = height else { 
        throw NSError(domain: "Height is missing", code: 1, userInfo: nil)
    }
    return length * width * height
}

dolo {
    let volume3 = try calculateVolumeWithErrorHandling(length: 10, width: 5, height: 2)
    print(volume3) //Output: 100.0
}
catch{
    print(error)
}
//This will throw an error since height is missing 
dolo {
    let volume4 = try calculateVolumeWithErrorHandling(length: 10, width: 5, height: nil)
    print(volume4) //Output: Error
}
catch{
    print(error)
}