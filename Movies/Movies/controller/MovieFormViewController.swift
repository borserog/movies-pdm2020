//
//  MovieFormViewController.swift
//  Movies
//
//  Created by user198256 on 5/26/21.
//

import UIKit

class MovieFormViewController: UIViewController {
    @IBOutlet weak var tfMovieName: UITextField!
    @IBOutlet weak var slMovieScore: UISlider!
    @IBOutlet weak var lbMovieScore: UILabel!
    @IBOutlet weak var swOscarNominee: UISwitch!
    @IBOutlet weak var stTimesWatched: UIStepper!
    @IBOutlet weak var lbTimesWatched: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.slMovieScore.addTarget(self, action: #selector(scoreDidChange(slider:)), for: .valueChanged)
        scoreDidChange(slider: self.slMovieScore)
        self.stTimesWatched.addTarget(self, action: #selector(stepperDidChange(stepper:)), for: .valueChanged)
        stepperDidChange(stepper: self.stTimesWatched)
    }
    
    @objc
    func stepperDidChange(stepper: UIStepper) {
        let currentValue = Int(stepper.value)
        self.lbTimesWatched.text = String(currentValue)
    }
    
    @objc
    func scoreDidChange(slider: UISlider) {
        let currentScore = Int(slider.value)
        self.lbMovieScore.text = String(currentScore)
    }
    
    @IBAction func saveMovie(_ sender: Any) {
        let newMovie = Movie(name: self.tfMovieName.text!, score: Int(self.slMovieScore.value), oscarNominated: self.swOscarNominee.isOn, timesWatched: Int(self.stTimesWatched.value))
        print(newMovie)
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
