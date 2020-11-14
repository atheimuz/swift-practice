//
//  bookmanager.swift
//  bookManager
//
//  Created by 김명유 on 2020/06/13.
//  Copyright © 2020 김명유. All rights reserved.
//

import Foundation

class BookManager{
    var bookList = [book]()
    
    func createBook (bookObject:book) {
        bookList += [bookObject]
    }
    
    func showAllBooks () -> String {
        var strTemp = ""
        for bookTemp in bookList {
            strTemp += "\(bookTemp.name!)\n"
            strTemp += "\(bookTemp.author!)\n"
            strTemp += "\(bookTemp.genre!)\n"
            strTemp += "----------\n"
        }
        return strTemp
    }
    
    func countBook () -> Int {
        return bookList.count
    }
    
    func searchBook (name:String) -> String?{
        var strTemp = ""
        for bookTemp in bookList {
            if bookTemp.name! == name {
                strTemp += "name: \(bookTemp.name!)\n"
                strTemp += "author: \(bookTemp.author!)\n"
                strTemp += "genre: \(bookTemp.genre!)"
                return strTemp;
            }
        }
        return "찾으시는 책이 없습니다";
    }

    func removeBook (name:String) {
        for (index, value) in bookList.enumerated() {
            if(value.name! == name) {
                bookList.remove(at: index)
            }
        }
    }
}
