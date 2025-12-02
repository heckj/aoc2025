import Testing
@testable import AdventOfCode

struct Day01Tests {

  @Test func testDial() async throws {
    let dial = Dial()
    #expect(dial.value == 50)
  }

  @Test func dialRotateRight() async throws {
    var dial = Dial(11)
    _ = dial.rotate(by: 8)
    #expect(dial.value == 19)
  }

  @Test func dialRotateRightOne() async throws {
    var dial = Dial(99)
    _ = dial.rotate(by: 1)
    #expect(dial.value == 0)
  }

  @Test func dialRotateLeftOne() async throws {
    var dial = Dial(0)
    _ = dial.rotate(by: -1)
    #expect(dial.value == 99)
  }

  @Test func dialRotateLeftMore() async throws {
    var dial = Dial(5)
    _ = dial.rotate(by: -10)
    #expect(dial.value == 95)
  }

  @Test func challengePart1() async throws {
    let challenge = Day01()
//    print(try await challenge.part1())
    #expect(String(describing: try await challenge.part1()) == "1023")
  }

  @Test func slowClickBack() async throws {
    var dial = Dial(5)
    let sequenceOfPositions = dial.slowClicks(by: -10)
    #expect(sequenceOfPositions == [4,3,2,1,0,99,98,97,96,95])
    #expect(dial.value == 95)
  }

  @Test func slowClickNil() async throws {
    var dial = Dial(99)
    let sequenceOfPositions = dial.slowClicks(by: 0)
    #expect(sequenceOfPositions == [])
    #expect(dial.value == 99)
  }

  @Test func slowClickForward() async throws {
    var dial = Dial(99)
    let sequenceOfPositions = dial.slowClicks(by: 4)
    #expect(sequenceOfPositions == [0,1,2,3])
    #expect(dial.value == 3)
  }

  @Test func challengePart2() async throws {
    let challenge = Day01()
//    print(try await challenge.part2())
    #expect(String(describing: try await challenge.part2()) == "5899")
  }

}
