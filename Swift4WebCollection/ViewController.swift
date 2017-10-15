//
//  ViewController.swift
//  Swift4WebCollection
//
//  Created by 高橋智彦 on 2017/10/15.
//  Copyright © 2017年 高橋智彦. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate {
    
    @IBOutlet weak var webView1: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        webView1.delegate = self
        
        let url = URL(string: "https://yahoo.co.jp/")
        let urlRequest = URLRequest(url: url!)
        webView1.loadRequest(urlRequest)
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

