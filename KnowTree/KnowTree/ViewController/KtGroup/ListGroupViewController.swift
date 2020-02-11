//
//  ListGroupMindMap.swift
//  KnowTree
//
//  Created by Khai Leo on 4/2/19.
//  Copyright © 2019 Toan Tran. All rights reserved.
//

import UIKit

class ListGroupViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    // MARK: variable.
    
    @IBOutlet weak var tbvListGroup: UITableView?;
    var listGroup: NSMutableArray?;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tbvListGroup?.delegate = self;
        tbvListGroup?.dataSource = self;
        // Do any additional setup after loading the view.
        initData();
    }
   
    func initData(){
        if !((listGroup != nil)) {
            listGroup = NSMutableArray.init();
        }
        listGroup?.add("Chicago");
        listGroup?.add("New york");
        tbvListGroup?.register(UINib(nibName: "ListGroupTableViewCell", bundle: nil), forCellReuseIdentifier: "ListGroupTableViewCell")
        tbvListGroup?.reloadData();
    }

    // MARK: UITableViewDelegate, UITableViewDatasource.
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listGroup?.count ?? 0;
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "ListGroupTableViewCell", for: indexPath) as! ListGroupTableViewCell;
        cell.lblTitle?.text = listGroup?[indexPath.row] as? String;
        return cell;
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = Utils.shared.getViewController(className: "GroupDetailVC", storyboard:KTConstants.GroupSB);
        self.navigationController?.pushViewController(vc, animated: true);
    }

}
