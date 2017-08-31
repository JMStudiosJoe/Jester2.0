//
//  JesterViewController.swift
//  Jester2.0
//
//  Created by Joseph Richardson on 8/30/17.
//  Copyright © 2017 Joseph Richardson. All rights reserved.
//

import UIKit

class JesterViewController: UIViewController {
    @IBOutlet weak var intro: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        getNextRandomEnigma()
    }
    
    func getNextRandomEnigma() {
        let enigma: Enigma = getEnigma()
        intro.text = enigma.intro
    }
    
    @IBAction func nextRandomEnigma(_ sender: Any) {
        getNextRandomEnigma()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
