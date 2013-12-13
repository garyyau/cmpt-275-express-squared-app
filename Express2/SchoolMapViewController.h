//
//  SchoolMapViewController.h
//  Express2
//
//  Created by Bo Bo Chun on 11/25/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MapView.h"
#import "Place.h"
#import <CoreLocation/CoreLocation.h>

@interface SchoolMapViewController : UIViewController <MKMapViewDelegate> {
    IBOutlet UINavigationBar *NavigationBar;
}
- (IBAction)viewSchoolLocation:(id)sender;
@property (weak, nonatomic) IBOutlet MKMapView *MapView;

@end
