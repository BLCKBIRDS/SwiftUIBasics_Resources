//File: Helper.swift
//Project: Chapter5_TimerApp

//Created at 10.01.20 by BLCKBIRDS
//Visit www.BLCKBIRDS.com for more.

import Foundation

enum TimerMode {
    case running
    case paused
    case initial
}

func secondsToMinutesAndSeconds (seconds : Int) -> String {
    
    let minutes = "\((seconds % 3600) / 60)"
    let seconds = "\((seconds % 3600) % 60)"
    let minuteStamp = minutes.count > 1 ? minutes : "0" + minutes
    let secondStamp = seconds.count > 1 ? seconds : "0" + seconds

    return "\(minuteStamp):\(secondStamp)"
}
