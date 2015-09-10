//
//  City.swift
//  HellGlow world
//
//  Created by Fhict on 10/09/15.
//  Copyright (c) 2015 Roy Timmers. All rights reserved.
//

import Foundation

public class City {
    
    var name:String;
    var population:Int;
    var glowActs:Array<GlowAct>;
    
    init(name:String, population:Int, glowActs:Array<GlowAct>)
    {
        self.name=name
        self.population=population
        self.glowActs=glowActs
    }
    func showInfo(){
        println("In the city of \(name) there are currently living \(population) people")
        for item in glowActs {
            item.showInfo()
        }
    }
}
