import Foundation

let myName = "Vandad"
let myAge = 20
let yourName = "Foo"
let yourAge = 19

if myName == "vandad" {
    "Your name is \(myName)"
} else {
    "Oops, Iguessed it wrong"
}

if myName == "Vandad" {
    "Now I guessed it correctly"
} else if myName == "Foo" {
    "Are you foo?"
} else {
    "Okay I give up"
}

if myName == "Vandad" && myAge == 30 {
 "Name is Vandad and age is 30"
} else if myAge == 20 {
    "I only gessed the right"
} else {
    "i don't know what I'm doing"
}


if myAge == 20 || myName == "Foo" {
    "Either age is 20, name is Foo or bath"
} else if myName == "Vandad" || myAge == 20 {
    "It's too late to get in this clause"
}

if myName == "Vandad"
    && myAge == 22
    && yourName == "Foo"
    || yourAge == 19 {
    "My name is Vandad and I'm 22 and your name is Foo...OR ... you are 19"
}

if (myName == "Vandad"
    && myAge == 22)
    &&
    (yourName == "Foo"
     || yourAge == 19) {
    "My name is Vandad and I'm 22... AND... your name is Foo oR you are 19"
} else {
    "Hmmm. that didn't work so well"
}
