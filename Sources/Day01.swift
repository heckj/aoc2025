import Algorithms

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

  func part2() -> Any {
    var dial = Dial()
    var countOfZeroPositions = 0

    for rotation in entities {
      let aSequence = dial.slowClicks(by: rotation)
      countOfZeroPositions += aSequence.count { $0 == 0 }
    }
    return countOfZeroPositions
  }
}
