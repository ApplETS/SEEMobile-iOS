//
//  DetailViewController.swift
//  SEEMobile-iOS
//
//  Created by Yves Millette on 2016-06-08.
//  Copyright (c) 2016 École de technologie supérieure. All rights reserved.
//


import UIKit


class DetailViewController: UIViewController {


    @IBOutlet weak var detailDescriptionLabel: UILabel!




    var detailItem: AnyObject? {
    didSet {
        // Update the view.
        self.configureView()
    }

    }


    func configureView() {
    // Update the user interface for the detail item.
    if let detail = self.detailItem {
        if let label = self.detailDescriptionLabel {
            label.text = detail.valueForKey("timeStamp")!.description
        }
    }
    }


    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    self.configureView()
    }


    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }




}
