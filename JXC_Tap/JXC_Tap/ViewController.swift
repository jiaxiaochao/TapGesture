//
//  ViewController.swift
//  JXC_Tap
//
//  Created by pxwx on 2019/4/24.
//  Copyright © 2019 jxc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var preView : UIView!
    var topView : UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        preView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        preView.backgroundColor = UIColor.gray
        view.addSubview(preView)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(printPreView))
        tap.delegate = self
        preView.addGestureRecognizer(tap)
        
        topView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        topView.backgroundColor = UIColor.white
        preView.addSubview(topView)
        
        
        topView.center = preView.center
        preView.center = view.center
    }
    
    @objc func printPreView() {
        print("preView tap")
    }
    
    @objc func printTopView() {
        print("topView tap")
    }
}


extension ViewController: UIGestureRecognizerDelegate {
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {

        ///响应点击事件的view
//        if touch.view == preView {
//            return true
//        }
//        return false
        
        
        ///排除不响应点击事件的view
        //touch.view?.isDescendant(of: topView)
        if touch.view == topView {
            return false
        }
        //排除不响应的类
        if (touch.view?.isKind(of: UIImageView.self))! {
            
        }
        
        //查询view的类名
        print(type(of: touch.view!).description())
        print(NSStringFromClass(type(of: touch.view!)))
        return true
    }
}
