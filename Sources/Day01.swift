import Algorithms

struct Dial {
  var value: Int
  let dialSize = 100
  init(_ value: Int = 50) {
    self.value = value
  }
  mutating func rotate(by: Int) -> Int {
    // R = +1
    // L = -1
    // 0 -> 99
    let newValue = (self.value + by + dialSize) % 100
    self.value = newValue
    return newValue
  }
}

struct Day01: AdventDay {

  // Save your data in a corresponding text file in the `Data` directory.
  var data: String

  // Splits input data into its component parts and convert from string.
  var entities: [Int] {
    data.split(separator: "\n").map { str in
      if str.starts(with: "L") {
        // left rotation
        guard let num = Int(str.dropFirst()) else {
          fatalError()
        }
        return -num

      } else {
        // right rotation
        guard let num = Int(str.dropFirst()) else {
          fatalError()
        }
        return num
      }
    }
  }


  // Replace this with your solution for the first part of the day's challenge.
  func part1() async throws -> Int {
    var dial = Dial()
    var countOfZeros = 0
    for rotation in entities {
      let aValue = dial.rotate(by: rotation)
      if aValue == 0 {
        countOfZeros += 1
      }
    }
    return countOfZeros
  }
}
//  // Replace this with your solution for the second part of the day's challenge.
//  func part2() -> Any {
//    // Sum the maximum entries in each set of data
//    entities.map { $0.max() ?? 0 }.reduce(0, +)
//  }

