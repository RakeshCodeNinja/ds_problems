import Foundation

func main() {
    let result = findNumbers2([1, 2, 3, 4, 5, 6], 8)
    print(result)
}

// Solution 1: Not Optimized
func findNumbers(_ arrayList: [Int], _ targetSum: Int) -> [Int] {
    for i in 0..<arrayList.count {
        for j in (i + 1)..<arrayList.count {
            // print("Num 1: \(arrayList[i])")
            // print("Num 2: \(arrayList[j])")
            // print("Sum: \(arrayList[i] + arrayList[j])")

            if arrayList[i] + arrayList[j] == targetSum {
                return [arrayList[i], arrayList[j]]
            }
        }
    }
    return []
}

// Solution 2: Optimized Solution
func findNumbers2(_ arrayList: [Int], _ targetSum: Int) -> [Int] {
    var tempMap = [Int: Bool]()

    for i in 0..<arrayList.count {
        let requiredNum = targetSum - arrayList[i]

        // print("requiredNum: \(requiredNum)")
        // print("tempMap: \(tempMap)")

        if tempMap[requiredNum] != nil {
            return [requiredNum, arrayList[i]]
        } else {
            tempMap[arrayList[i]] = true
            // print("tempMap2: \(tempMap)")
        }
    }
    return []
}

main()
