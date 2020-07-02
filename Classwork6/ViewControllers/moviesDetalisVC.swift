//
//  moviesDetalisVC.swift
//  Classwork6
//
//  Created by modhi on 7/2/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

var selectedMovie = Movie(movieName: "nothing", movieReleaseDate: 200, actors:[], rating: 0.0, pgRating: "PG 13")

class moviesDetalisVC: UIViewController {
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieRatingLabel: UILabel!
    @IBOutlet weak var movieRatingView: UIView!
    @IBOutlet weak var movieRatedLabel: UIView!
    @IBOutlet weak var movieRatedView: UIView!
    @IBOutlet weak var releaseDateLabel: UIView!
    @IBOutlet weak var releaseDatelView: UIView!
    
    @IBOutlet weak var actorIMageView0: UIImageView!
    @IBOutlet weak var actorLabel1: UILabel!
    @IBOutlet weak var actorIMageView1: UIImageView!
    @IBOutlet weak var actorLabel2: UILabel!
    @IBOutlet weak var actorIMageView2: UIImageView!
    @IBOutlet weak var actorLabel3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMovieDetails()
        // Do any additional setup after loading the view.
    }
    
    
    func setMovieDetails(){
        //Films image
        movieImageView.image = UIImage(named: selectedMovie.movieName)
        
        //Labels
        movieRatingLabel.text = "\(selectedMovie.rating)"
        movieRatingLabel.text = selectedMovie.pgRating
        movieRatingLabel.text = "\(selectedMovie.movieReleaseDate)"
        
        //Actors image
        actorIMageView0.image = UIImage(named: selectedMovie.actors[0])
        actorIMageView1.image = UIImage(named: selectedMovie.actors[1])
        actorIMageView2.image = UIImage(named: selectedMovie.actors[2])
       
        //Actors name
        actorLabel1.text = selectedMovie.actors[0]
        actorLabel2.text = selectedMovie.actors[1]
        actorLabel3.text = selectedMovie.actors[2]
    }
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
