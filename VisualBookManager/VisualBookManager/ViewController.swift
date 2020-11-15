//
//  ViewController.swift
//  VisualBookManager
//
//  Created by 김명유 on 2020/11/15.
//  Copyright © 2020 김명유. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let myBookManager = BookManager()
    
    @IBOutlet weak var outputTextView: UITextView!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var genreTextField: UITextField!
    
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let book1 = book(name: "햄릿", author: "셰익스피어", genre: "비극")
        
        
        myBookManager.createBook(bookObject: book1)
    }
    
    @IBAction func createBookAction(_ sender: Any) {
        var bookTemp = book()
        
        bookTemp.name = nameTextField.text!
        bookTemp.author = authorTextField.text!
        bookTemp.genre = genreTextField.text!
        
        myBookManager.createBook(bookObject: bookTemp)
        
        countLabel.text = "\(myBookManager.countBook())"
        
        nameTextField.text = ""
        authorTextField.text = ""
        genreTextField.text = ""
    }

    @IBAction func showAllBookAction(_ sender: Any) {
        outputTextView.text = myBookManager.showAllBooks()
    }
    
    @IBAction func searchBookAction(_ sender: Any) {
        let resultBook = myBookManager.searchBook(name: nameTextField.text!)
        
        if resultBook != nil {
            outputTextView.text = resultBook
        } else {
            outputTextView.text = "we don't have book that you search"
        }
    }
    
    @IBAction func removeBookAction(_ sender: Any) {
        myBookManager.removeBook(name: nameTextField.text!)
        
        outputTextView.text = "\(nameTextField.text!) is removed"
        countLabel.text = "\(myBookManager.countBook())"
    }
}

