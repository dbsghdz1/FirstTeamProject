//
//  SubViewController.swift
//  TeamIntroduce
//
//  Created by 전성진 on 5/27/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    let teamName: [TeamName] = [
    TeamName(id: "JSJ", name: "전성진"),
    TeamName(id: "KYH", name: "김윤홍"),
    TeamName(id: "JSB", name: "장수빈"),
    TeamName(id: "YDS", name: "윤대성"),
    TeamName(id: "AJH", name: "안지현"),
    TeamName(id: "KDJ", name: "김동준"),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teamName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.nameLabel.text = teamName[indexPath.row].name
        cell.profileImgView.image = UIImage(named: teamName[indexPath.row].id)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: teamName[indexPath.row].id, sender: self)
        tableView.deselectRow(at: indexPath, animated: false)
    }
}

struct TeamName {
    let id: String
    let name: String
}
