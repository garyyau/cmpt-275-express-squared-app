//
//  CreditsViewController.h
//  Express2
//
//  Created by Gary Yau on 11/21/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import <UIKit/UIKit.h>

@interface CreditsViewController : UIViewController {
    
    IBOutlet UIImageView *customBackground;
    IBOutlet UINavigationBar *NavigationBar;
}
@property (weak, nonatomic) IBOutlet UITextView *creditsTextView;
@end
