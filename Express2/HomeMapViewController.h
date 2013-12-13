//
//  HomeMapViewController.h
//  Express2
//
//  Created by Fedora Furtado on 11/2/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MapView.h"
#import "Place.h"
#import <CoreLocation/CoreLocation.h>


@interface HomeMapViewController : UIViewController <MKMapViewDelegate>{

    IBOutlet UINavigationBar *NavigationBar;
}

- (IBAction)viewHomeAddress:(id)sender;
@property (weak, nonatomic) IBOutlet MKMapView *MapView;

@end
