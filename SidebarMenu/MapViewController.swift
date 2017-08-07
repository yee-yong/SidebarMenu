//
//  MapViewController.swift
//  SidebarMenu
//
//  Created by Simon Ng on 2/2/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var menuButton:UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        if self.revealViewController() != nil {
            //SWRevealViewController provides the revealToggle: method to handle the expansion and contraction of the sidebar menu.
            //set the target of the sidebar button to the reveal view controller and action to the revealToggle: method. So when the sidebar button is tapped, it’ll call the revealToggle: method to display the sidebar menu
            menuButton.target = self.revealViewController()
            menuButton.action = #selector(self.revealViewController().revealToggle(_:))
            
            //add a pan gesture recognizer
            //swipe right in the content area to activate / reveal the sidebar, swipe left to hide the sidebar.
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /**
    //MARK - Navigation
     
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    **/
    
}
