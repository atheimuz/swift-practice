//
//  book.swift
//  bookManager
//
//  Created by 김명유 on 2020/06/13.
//  Copyright © 2020 김명유. All rights reserved.
//

struct book {
    var name:String?
    var author:String?
    var genre:String?
    
    func printBook() {
        print ("name:::: \(name!)")
        print("author::: \(author!)")
        print("genre::: \(genre!)")
    }
}
