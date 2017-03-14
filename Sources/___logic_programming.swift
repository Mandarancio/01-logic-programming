//
//  A LogicKit usage example that showcases the use of predicates.
//
//  Created by Dimitri Racordon on 12.02.17.
//  Copyright © 2017 University of Geneva. All rights reserved.
//
import LogicKit


// First, we create an enumeration to represent the different Pokemon.
enum Person: Term {

    case A, B, C, D, E, F, G, H, I

    func equals(_ other: Term) -> Bool {
        return (other is Person) && (other as! Person == self)
    }

}

// We then define a set of predicates on the type of the pokemons.
func is_student(who: Term) -> Goal {
    return  (who === Person.A) ||
            (who === Person.E) ||
            (who === Person.I)
}
//
// func fire(_ pokemon: Term) -> Goal {
//     return  (pokemon ≡ Pokemon.Charmander) ||
//             (pokemon ≡ Pokemon.Vulpix)
// }
//
// func water(_ pokemon: Term) -> Goal {
//     return  (pokemon ≡ Pokemon.Squirtle) ||
//             (pokemon ≡ Pokemon.Psyduck)
// }
//
// // We define another predicate that takes two Pokemon and holds when the first
// // is stronger that ther second (solely based on their type).
// func stronger(_ lhs: Term, _ rhs: Term) -> Goal {
//     return  grass(lhs) && water(rhs) ||
//             fire(lhs) && grass(rhs) ||
//             grass(lhs) && water(rhs)
// }

enum Nat: Term {
    case zero
    case succ (Term)
    func equals(_ other: Term) -> Bool {
        return (other is Nat) && (other as! Nat == self)
    }
    static func ==(lhs: Nat, rhs: Nat) -> Bool {
        switch (lhs, rhs) {
        case (let .succ(l), let .succ(r)):
            return l.equals(r)
        case (.zero, .zero):
            return true
        default:
            return false
        }
    }
}

func is_even(what: Term) -> Goal {
    return (what === Nat.zero) ||
           fresh { x in
             what === Nat.succ(Nat.succ(x)) &&
             is_even(what:x)
           }
}
