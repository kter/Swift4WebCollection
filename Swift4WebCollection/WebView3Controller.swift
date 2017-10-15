//
//  WebView3Controller.swift
//  Swift4WebCollection
//
//  Created by 高橋智彦 on 2017/10/15.
//  Copyright © 2017年 高橋智彦. All rights reserved.
//

import UIKit

class WebView3Controller: UIViewController,UIWebViewDelegate {

    @IBOutlet weak var webView3: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        webView3.delegate = self
        let url = URL(string: "https://apple.com/jp")
        let urlRequest = URLRequest(url: url!)
        webView3.loadRequest(urlRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
