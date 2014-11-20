//
//  ViewController.swift
//  pocketpo
//
//  Created by OBFK on 11/19/14.
//  Copyright (c) 2014 com.obesity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let baseURL = NSURL(string: "http://pocketpo.herokuapp.com/api/v1/")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        getCategoryData()
        // getItemData()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getCategoryData() -> Void {

        let categoryURL = NSURL(string: "categories", relativeToURL: baseURL)

        let sharedSession = NSURLSession.sharedSession()

        let downloadTask: NSURLSessionDownloadTask = sharedSession.downloadTaskWithURL(categoryURL!, completionHandler: { (
            location: NSURL!,
            response: NSURLResponse!,
            error: NSError!) -> Void in

            if (error == nil) {

                // get stored temp data object
                let dataObject = NSData(contentsOfURL: location)

                // parse data object into NSArray
                let categoryArray: NSArray = NSJSONSerialization.JSONObjectWithData(
                    dataObject!,
                    options: nil,
                    error: nil) as NSArray

                // dispatch UI updates to GCD
                dispatch_async(dispatch_get_main_queue(), { () -> Void in

                    for category in categoryArray {
                        println(category["id"])
                        println(category["name"])
                    }

                })

            }

        })

        downloadTask.resume()

    }

}

