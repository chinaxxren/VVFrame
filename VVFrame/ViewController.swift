//
//  Copyright © 2021 chinaxxren. All rights reserved.
//

import UIKit
import VVFrame

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var dataList = [String]()
    
    // MARK: - Subviews

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: self.view.bounds, style: .plain)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.dataList.append("Multiplier")
        
        view.addSubview(tableView)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = self.dataList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var controller:UIViewController;
        if indexPath.row == 0 {
            controller = MultiplierController()
        } else {
            controller = UIViewController()
        }
        
        self.navigationController?.pushViewController(controller, animated: true)
    }
}

