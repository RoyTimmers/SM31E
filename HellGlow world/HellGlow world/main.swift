//
//  main.swift
//  HellGlow world
//
//  Created by Fhict on 10/09/15.
//  Copyright (c) 2015 Roy Timmers. All rights reserved.
//

import Foundation

var bleuLightAct = GlowAct(name:"The Bluelight act.", rating:8, startTime: "22:20")
var redLightAct = GlowAct(name:"The Redlight act.", rating:10, startTime: "22:40")
var eindhoven = City(name:"Eindhoven", population: 220000, glowActs:Array<GlowAct>())
eindhoven.glowActs.append(bleuLightAct)
eindhoven.glowActs.append(redLightAct)
eindhoven.showInfo()


