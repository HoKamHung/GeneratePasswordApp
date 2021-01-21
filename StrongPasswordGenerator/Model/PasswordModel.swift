//
//  PasswordModel.swift
//  StrongPasswordGenerator
//
//  Created by Kam Hung Ho on 21/1/2021.
//

import Foundation

struct PasswordModel : Decodable
{
    let alphabat : [String] = ["a","A","b","B","c","C","d","D","e","E","f","F","g","G","h","H","i","I","j","J","k","K","l","L","m","M","n","N","o","O","p","P","q","Q","r","R","s","S","t","T","u","U","v","V","w","W","x","X","y","Y","z","Z"]
    let numeric : [String] = ["1","2","3","4","5","6","7","8","9","0"]

    var charList : [String] = []
    var alphabatEnable : Bool
    var numberEnable : Bool
    var specialCharacterEnable : Bool
    var specialCHaracters : [String]
    var passwordLength : Int
    var password : String

    init() {
        alphabatEnable = true;
        numberEnable = true;
        specialCharacterEnable = true;
        specialCHaracters = []
        passwordLength = 10
        password = ""

        createCharList()
    }

    mutating func createCharList() {
        charList.removeAll()

        if alphabatEnable {
            charList += alphabat
        }
        if numberEnable {
            charList += numeric
        }
    }
}
