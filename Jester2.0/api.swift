//
//  File.swift
//  Jester2.0
//
//  Created by Joseph Richardson on 8/30/17.
//  Copyright © 2017 Joseph Richardson. All rights reserved.
//


import Alamofire

let chuckNorrisAPIURL: String = "http://api.icndb.com/jokes/random"

var JestBag = [Enigma]()

func getJoke() {

    Alamofire.request(chuckNorrisAPIURL).validate(contentType: ["application/json"]).responseJSON { response in
        if let jsonResult = response.result.value as? Dictionary<String, Any> {

            var actualData = jsonResult["value"] as? Dictionary<String, Any>
            let intro: String = actualData!["joke"] as! String
            let chuckEnigma = Enigma(intro: intro, answer: "", type: "joke")

            JestBag.append(chuckEnigma)
        }
        else {
            print("there was an error")
        }
    }
}
func getRiddle() -> String {
    return "this app is becoming a riddle"
}

func getEnigma() -> Enigma {
    getJoke()
    return JestBag[JestBag.count - 1]
    
}
