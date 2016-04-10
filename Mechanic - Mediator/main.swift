//
//  main.swift
//  Mechanic - Mediator
//
//  Created by Reza Shirazian on 2016-04-07.
//  Copyright © 2016 Reza Shirazian. All rights reserved.
//

import Foundation

var requestManager = RequestMediator()

var steve = ConcreteMechanic(mediator: requestManager, name: "Steve Akio", location: (23,12))
var joe = ConcreteMechanic(mediator: requestManager, name: "Joe Bob", location: (13,12))
var dave = ConcreteMechanic(mediator: requestManager, name: "Dave Far", location: (823,632))
var mike = ConcreteMechanic(mediator: requestManager, name: "Mike Nearfar", location: (800,604))

requestManager.addMechanic(steve)
requestManager.addMechanic(joe)
requestManager.addMechanic(dave)
requestManager.addMechanic(mike)

steve.send(Request(message: "I can't find this address anyone close by knows where Rengstorff Ave is?", mechanic: steve))

joe.send(Request(message: "I need some brake pads anyone close by has some?", mechanic: joe, parts: [Part(name: "StopIt Brake Pads", price: 35.25)]))

dave.send(Request(message: "Dang it I spilled all my oil, anyone around here got a spare 5 Quart Jug.. and some filters too", mechanic: dave, parts:[Part(name: "Engine Oil SuperPlus", price: 23.33), Part(name: "Filters", price: 4.99)]))
