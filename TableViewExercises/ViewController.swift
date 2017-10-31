//
//  ViewController.swift
//  TableViewExercises
//
//  Created by Masai Young on 10/30/17.
//  Copyright © 2017 Masai Young. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var EmojiTableView: UITableView!
    
    var delegate: UITableViewDelegate?
    let q1Model = Q1Brain()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return q1Model.listOfContent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Content Format")!
        let row = indexPath.row
        let contentRow = q1Model.listOfContent[row]
        
        cell.textLabel?.text = String(contentRow.emoji) + ("- ") + contentRow.title
        cell.detailTextLabel?.text = contentRow.subtitle
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.EmojiTableView.delegate = self
        self.EmojiTableView.dataSource = self
        q1Model.setUpContent()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

