import Algorithms

struct Day02: AdventDay {

  // Save your data in a corresponding text file in the `Data` directory.
  var data: String

  // Splits input data into its component parts and convert from string.
  var entities: [(Int,Int)] {
    data.split(separator: ",").map { idrange in
      let bounds = idrange.trimmingCharacters(in: .whitespacesAndNewlines).split(separator: "-")

      guard let first: Int = Int(String(bounds[0])),
      let second: Int = Int(String(bounds[1])) else {
        fatalError("Invalid input: \(bounds)") }
      if first > second {
        return (second,first)
      } else {
        return (first,second)
      }
    }
  }

  func invalidSequence(_ i: Int) -> Bool {

    let stringOfInt = String(i)
    for character in stringOfInt {
      
    }

  }


  func part1() async throws -> Any {
    return 0
  }

  func part2() async throws -> Any {
    return 0
  }
}

