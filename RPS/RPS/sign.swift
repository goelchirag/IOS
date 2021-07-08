//
//  sign.swift
//  RPS
//
//  Created by Angered Force on 4/6/1400 AP.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)
func randomSign()->Sign{
    let sign = randomChoice.nextInt()
    if(sign==0){
        return .rock
    }
    else if(sign == 1){
        return .paper
    }
    else{
        return .scissor
    }
}

enum Sign{
    case rock
    case paper
    case scissor
    var emoji : String {
        switch self {
        case .rock:
            return "👍"
        case .paper:
            return "🖐"
        default:
            return "✌️"
        }
    }
    func result(opponent : Sign) -> GameState {
        
        if(self==opponent){
            return .draw}
        else if(self == .rock){
            if(opponent == .paper){
            return .loses}
            else{
                return .win}
        }
        else {
            if(opponent == .rock){
                return .win
            }
            else{
                return .loses
            }
        }
    }
}
