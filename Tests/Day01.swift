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

//  @Test func checkData() async throws {
//    let challenge = Day01()
//    let data = challenge.data
//    //print(data)
//    print(try await challenge.part1())
//  }

  @Test func challengePart1() async throws {
    let challenge = Day01()
    #expect(String(describing: try await challenge.part1()) == "1023")
  }

}
