//
//  ViewController.swift
//  Tabletop
//
//  Created by Rodrigo Webler on 9/10/16.
//  Copyright © 2016 Rodrigo Webler. All rights reserved.
//

import UIKit

class RootViewController: UITableViewController {
    
    // MARK: Properties

    var games = [Game]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadSampleGames()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Navigation

    
    func loadSampleGames() {
        let photo1 = UIImage(named: "7Wonders")!
        let noPlayers1 = TabletopRange(min: 2, max: 7)
        let game1 = Game(name: "7 Wonders", noPlayers: noPlayers1, thumb: photo1)!
        
        let photo2 = UIImage(named: "Dominion")!
        let noPlayers2 = TabletopRange(min: 2, max: 4)
        let game2 = Game(name: "Dominion", noPlayers: noPlayers2, thumb: photo2)!
        
        let photo3 = UIImage(named: "Carcassonne")!
        let noPlayers3 = TabletopRange(min: 2, max: 5)
        let game3 = Game(name: "Carcassonne", noPlayers: noPlayers3, thumb: photo3)!
        
        games = [game1, game2, game3]
    }
    
    
    // MARK: Table View Delegate Methods

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GameTableViewCell", for: indexPath) as! GameCell
        
        // Fetches the appropriate game for the data source layout.
        let game = games[(indexPath as NSIndexPath).row]
        
        cell.nameLabel.text = game.name
        cell.noPlayersLabel.text = "\(game.noPlayers!.min)-\(game.noPlayers!.max!) Players"
        cell.thumb.image = game.thumb
        
        return cell
    }
    
    


}

