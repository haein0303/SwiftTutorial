import UIKit
import Foundation

enum rank : Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func desc() -> String{
        switch (self) {
        case .ace:return "ACE"
        case .jack:return "JACK"
        case .king:return "KING"
        case .queen:return "QUEEN"
        default: return String(self.rawValue)
        }
    }
}

let r1:rank = rank.ace
let r2 = rank.jack
let r3:rank = .queen
rank.three.desc()
rank.eight.desc()

enum ServerResponse{
    case Result(String, String, Int)
    case Error(String)
}

let resp = ServerResponse.Result("Seoul", "OK", 200)
let err = ServerResponse.Error("Not Found")

func describe(about sr :ServerResponse) -> String{
    switch sr {
    case .Result: return "OK"
    case .Error: return "N_OK"
    }
}

describe(about: resp)
describe(about: err)
