//
//  Movie.swift
//  Movies
//
//  Created by user198256 on 5/26/21.
//

import Foundation

class Movie: NSObject {
    var name: String
    var score: Int
    var oscarNominated: Bool
    var timesWatched: Int
    
    init(name: String, score: Int, oscarNominated: Bool, timesWatched: Int) {
        self.name = name
        self.score = score
        self.oscarNominated = oscarNominated
        self.timesWatched = timesWatched
    }
    
    override var description: String {
        return "NAME: \(self.name)\n" +
        "SCORE: \(self.score)\n" +
            "NOMINATED: \(self.oscarNominated)\n" +
            "TIMES WATCHED: \(self.timesWatched)\n"
        
    }
}
