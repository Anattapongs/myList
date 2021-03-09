//
//  ViewController.swift
//  myList
//
//  Created by Anattapong Suktep on 9/3/2564 BE.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var names: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "The List"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
       
    }

    @IBAction func addNameButtonPressed(_ sender: Any) {
        
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
          tableView.dequeueReusableCell(withIdentifier: "Cell",
                                        for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
    
}

