import XCTest
import LogicKit
@testable import ___logic_programming

class ___logic_programmingTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // We ask for all Pokemon that are stronger than Bulbasaur, according to our
        // `stronger` predicate.
        // do {
        //   let x = Variable(named: "x")
        //   let q = is_student(who: x)
        //   print("Which persons are students?")
        //   let results = q(State())
        //   for substitution in results {
        //       print ("substitution found")
        //       for (_, value) in substitution.reified() {
        //           print("* \(value)")
        //       }
        //   }
        // }
        // do {
        //   let x = Variable(named: "x")
        //   let y = Variable(named: "y")
        //   let q = is_student(who: x) && is_student (who: y)
        //   print("Which persons are students?")
        //   let results = q(State())
        //   for substitution in results {
        //       print ("substitution found")
        //       for (variable, value) in substitution.reified() {
        //           print("* \(variable) = \(value)")
        //       }
        //   }
        // }
        // do {
        //   let q = is_student(who: Person.A)
        //   print("Is A a student?")
        //   let results = q(State())
        //   for substitution in results {
        //       print ("substitution found")
        //       for (_, value) in substitution.reified() {
        //           print("* \(value)")
        //       }
        //   }
        // }
        // do {
        //   let q = is_student(who: Person.B)
        //   print("Is B a student?")
        //   for substitution in q(State()) {
        //       print ("substitution found")
        //       for (_, value) in substitution.reified() {
        //           print("* \(value)")
        //       }
        //   }
        // }
        // do {
        //   let goal = is_even (what: succ (succ (zero)))
        //   for substitution in solve (goal) {
        //     print ("substitution found")
        //     for (_, value) in substitution.reified() {
        //         print("* \(value)")
        //     }
        //   }
        // }
        // do {
        //     let v = Variable(named:"v")
        //     let goal = is_even (what: v)
        //     print ("ici")
        //     for substitution in solve (goal) {
        //         print ("substitution found")
        //         for (variable, value) in substitution.reified() {
        //             let term = replace (term: value, substitution: substitution)
        //             print("* \(variable) = \(term)")
        //         }
        //     }
        // }
        do {
            let v = Variable(named: "list")
            let y = Variable(named: "size")
            let goal = list_size (list: v, size: succ(zero))
            for substitution in solve (goal) {
                print ("substitution found")
                for (variable, value) in substitution.reified() {
                    print("* \(variable) = \(value)")
                }
            }
        }
        // do {
        //     let goal = list_size (list: MyList.cons (element: Nat.zero, list: MyList.empty), size: Nat.succ (Nat.zero))
        //     for substitution in solve (goal) {
        //         print ("substitution found")
        //         for (variable, value) in substitution.reified() {
        //             let term = replace (term: value, substitution: substitution)
        //             print("* \(variable) = \(term)")
        //         }
        //     }
        // }
    }


    static var allTests : [(String, (___logic_programmingTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
