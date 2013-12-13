//
//  AllergiesListDisplayViewController.h
//  Express2
//
//  Created by Gary Yau on 10/31/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import <UIKit/UIKit.h>

@interface AllergiesListDisplayViewController : UITableViewController {
    IBOutlet UILabel *AllergiesListLabel;
    
    IBOutlet UINavigationBar *NavigationBar;
}

- (IBAction)BackButton:(id)sender;

@end
