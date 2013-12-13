//
//  Annotation.h
//  Express2
//
//  Created by Fedora Furtado on 11/2/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Annotation : NSObject <MKAnnotation>

@property (nonatomic, assign)CLLocationCoordinate2D coordinate;
//called coordinate - Do not rename any of these, the property will NOT FUNCTION IF RENAMED.

@property (nonatomic, copy)NSString * title;
@property (nonatomic, copy)NSString * subtitle;


@end
