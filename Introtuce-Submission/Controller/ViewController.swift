//
//  ViewController.swift
//  Introtuce-Submission
//
//  Created by Darshil Agrawal on 09/05/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var total = 10
    let tableView=UITableView()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return total
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        cell.textLabel?.text="Cell \(indexPath.row + 1)"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            total = total - 1
            tableView.deleteRows(at: [indexPath], with: .bottom)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate=self
        tableView.dataSource=self
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame=view.bounds
    }


}

