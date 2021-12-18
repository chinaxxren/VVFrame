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

        dataList.append("Multiplier")
        dataList.append("Edge")
        dataList.append("Relations")
        dataList.append("SafeArea")
        dataList.append("Center")
        dataList.append("TextSize")
        dataList.append("Relation")
        dataList.append("Container")
        dataList.append("Stack")
        
        view.addSubview(tableView)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = dataList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var controller:UIViewController;
        if indexPath.row == 0 {
            controller = MultiplierController()
        } else if(indexPath.row == 1){
            controller = EdgeController()
        } else if(indexPath.row == 2){
            controller = RelationsController()
        } else if(indexPath.row == 3){
            controller = SafeAreaController()
        } else if(indexPath.row == 4){
            controller = CenterController()
        } else if(indexPath.row == 5){
            controller = TextSizeController()
        } else if(indexPath.row == 6){
            controller = RelationController()
        } else if(indexPath.row == 7){
            controller = ContainerController()
        } else if(indexPath.row == 8){
            controller = StackController()
        } else {
            controller = UIViewController()
        }
        
        self.navigationController?.pushViewController(controller, animated: true)
    }
}

