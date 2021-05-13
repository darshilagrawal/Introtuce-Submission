//
//  ViewController.swift
//  Introtuce-Submission
//
//  Created by Darshil Agrawal on 09/05/21.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var total = 12
    var users=[RegisteredUser]()
    let tableView=UITableView()
    var ref:DatabaseReference?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return total
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        cell.textLabel?.text="Cell \(indexPath.row + 1)"
        cell.accessoryType = .disclosureIndicator
        cell.backgroundColor = .cyan
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65.0
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
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == total-1{
            total=total+12
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate=self
        tableView.dataSource=self
        ref=Database.database().reference()
        ref?.child("introtuce-submission-defualt-rtdb").observe(.value,with: { (snapshot) in
            print(snapshot.value as Any)
            
        })
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame=view.bounds
    }


}

