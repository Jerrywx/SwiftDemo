//
//  JRForumAllViewController.swift
//  SwiftDown
//
//  Created by wxiao on 2017/9/7.
//  Copyright © 2017年 王潇. All rights reserved.
//

import UIKit

class JRForumAllViewController: JRForumSubController {

	/// tableView
//	var tableView: UITableView?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = UIColor.green
		
		///
//		let frame = CGRect(x: 0, y: 0, width: UIScreen.scrren_W(), height: UIScreen.screen_H() - 104)
//		tableView = UITableView(frame: frame, style: .grouped)
//		tableView?.delegate		= self
//		tableView?.dataSource	= self
//		tableView?.register(UITableViewCell.self, forCellReuseIdentifier: "top")
//		view.addSubview(tableView!)
//		tableView?.bounces = false
	}
	
}

// MARK: - UITableViewDataSource, UITableViewDelegate
//extension JRForumAllViewController: UITableViewDataSource, UITableViewDelegate {
//	
//	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//		return 22;
//	}
//	
//	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//		let cell = tableView.dequeueReusableCell(withIdentifier: "top")
//		
//		cell?.textLabel?.text = "ALL --- \(indexPath.row)"
//		
//		return cell!
//	}
//	
//	func scrollViewDidScroll(_ scrollView: UIScrollView) {
//		
//		let y = scrollView.contentOffset.y
//		
//		if y <= 0 {
//			scrollView.contentOffset = CGPoint.zero
//			scrollView.isScrollEnabled = false
//		}
//		
//	}
//	
//}
