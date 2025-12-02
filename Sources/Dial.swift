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

  mutating func slowClicks(by: Int) -> [Int] {
    // R = +1
    // L = -1
    // 0 -> 99
    if by == 0 {
      return []
    } else {
      let sequenceToDoSomethingWith = 1...abs(by)
      let clickPositions: [Int]
      if by > 0 {
        clickPositions = sequenceToDoSomethingWith.map({ step in
          (self.value + step + dialSize) % dialSize
        })
      } else {
        clickPositions = sequenceToDoSomethingWith.map({ step in
          (self.value - step + dialSize) % dialSize
        })
      }

      if let newValue = clickPositions.last {
        self.value = newValue
      }
      return clickPositions
    }
  }

}
