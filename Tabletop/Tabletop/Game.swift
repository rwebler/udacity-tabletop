//
//  Game.swift
//  Tabletop
//
//  Created by Rodrigo Webler on 10/1/16.
//  Copyright © 2016 Rodrigo Webler. All rights reserved.
//

import UIKit

class TabletopRange {
    let min: Int
    let max: Int?
    
    init(min: Int, max: Int?) {
        self.min = min
        self.max = max
    }
    
    func isGoodFor(_ numberOfPlayers: Int) -> Bool {
        //TODO: Test for no max
        return (numberOfPlayers >= min && numberOfPlayers <= max!)
    }
    
    
}

class Game {
    // MARK: Properties
    
    var name: String
    var noPlayers: TabletopRange?
    var thumb: UIImage?
    
    
    // MARK: Initialization
    
    init?(name: String, noPlayers: TabletopRange?, thumb: UIImage?) {
        // Initialize stored properties.
        self.name = name
        self.noPlayers = noPlayers
        self.thumb = thumb
        
        // Initialization should fail if there is no name.
        if name.isEmpty {
            return nil
        }
    }
}
