//
//  File.swift
//  memeMaker
//
//  Created by Angered Force on 4/6/1400 AP.
//

import Foundation

struct captionOption {
    var emoji :String
    var caption :String
}
var x : captionOption = captionOption(emoji: "🕶", caption: "You know what's Cool?")
var y : captionOption = captionOption(emoji: "😡", caption: "You know what make me Mad?")
var z : captionOption = captionOption(emoji: "❤️", caption: "You know what I love?")

var topcaption : [captionOption] = [x,y,z]
var ax = captionOption(emoji: "😸", caption: "Cats wearing hats")
var ay = captionOption(emoji: "🦮", caption: "Dogs carrying logs")
var az = captionOption(emoji: "🐒", caption: "Monkey being funky")
var bottomCaption = [ax,ay,az]


