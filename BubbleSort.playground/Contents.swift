// Bubble sorting

var array: [Int] = []

func generateRandomArray(array: inout [Int]) -> [Int] {
    array.removeAll()
    for n in 0..<10 {
        array.append(Int.random(in:0...100))
    }
    return array
}
generateRandomArray(array: &array)
print(array)

func bubbleSorting(array: inout [Int]) -> [Int] {
    for i in 0..<array.count - 1 {
        for j in 0..<array.count - i - 1 {
            if array[j] > array[j+1] {
                array[j] = array[j] + array[j+1]
                array[j+1] = array[j] - array[j+1]
                array[j] = array[j] - array[j+1]
            }
        }
    }
    return array
}

bubbleSorting(array: &array)
print("Отсортированный массив: \(array)")



func bubbleSortingTemp(array: inout [Int]) -> [Int] {
    for i in 0..<array.count - 1 {
        for j in 0..<array.count - 1 - i {
            if array[j] > array[j+1] {
                let temp = array[j]
                array[j] = array[j+1]
                array[j+1] = temp
            }
        }
    }
    return array
}

generateRandomArray(array: &array)
print(array)
bubbleSortingTemp(array: &array)
print("Отсортированный массив: \(array)")

