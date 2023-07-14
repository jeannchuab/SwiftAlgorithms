//
//  FilterMovies.swift
//  Algorithms
//
//  Created by Jeann Luiz on 10/07/23.
//

import Foundation

struct Movie {
  let name: String
  let username: String
  let email: String
}

/* The goal is to remove movies with duplicated id */

class FilterMovies {
    static func Solution1(input: String) -> String {
        
//        let log_dump = "name=John Trust, username=john3, email=john3@gmail.com, id=434453; name=Hannah Smith, username=hsmith, email=hsm@test.com, id=23312; name=Hannah Smith, username=hsmith, id=3223423, email=hsm@test.com; name=Robert M, username=rm44, id=222342, email=rm@me.com; name=Robert M, username=rm4411, id=5535, email=rm@me.com; name=Susan Vee, username=sv55, id=443432, email=susanv123@me.com; name=Robert Nick, username=rnick33, id=23432, email=rnick@gmail.com; name=Robert Nick II, username=rnickTemp34, id=23432, email=rnick@gmail.com; name=Susan Vee, username=sv55, id=443432, email=susanv123@me.com;"
        
        let arrayLog = input.components(separatedBy: ";")
        var dict: [String: Movie] = [:]
        var arrayMovies: [Movie] = []
        
        for item in arrayLog {
            let itemArray = item.components(separatedBy: ", ")
            var name = "", username = "", email = ""
            
            for subItem in itemArray {
                name = subItem.contains("name=") && !subItem.contains("username=") ? subItem.replacingOccurrences(of: "name=", with: "").trimmingCharacters(in: .whitespaces) : name
                username = subItem.contains("username=") ? subItem.replacingOccurrences(of: "username=", with: "").trimmingCharacters(in: .whitespaces) : username
                email = subItem.contains("email=") ? subItem.replacingOccurrences(of: "email=", with: "").trimmingCharacters(in: .whitespaces) : email
            }
            
            let movie = Movie(name: name, username: username, email: email)
            if dict[username] == nil {
                dict[username] = movie
                arrayMovies.append(movie)
            }
        }
                   
        var result = ""
        for movie in arrayMovies {
            if !movie.name.isEmpty {
                
                if !result.isEmpty {
                    result = result + " "
                }
                
                result = result + "name=\(movie.name), username=\(movie.username), email=\(movie.email);"
                print("name=\(movie.name), username=\(movie.username), email=\(movie.email);")
            }
        }
        
        return result
    }
}

