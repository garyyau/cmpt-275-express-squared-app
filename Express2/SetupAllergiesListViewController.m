//
//  SetupAllergiesListViewController.m
//  Express2
//
//  Created by Gary Yau on 10/31/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import "SetupAllergiesListViewController.h"

@interface SetupAllergiesListViewController ()

@end

@implementation SetupAllergiesListViewController


- (IBAction)BackButton:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)ReturnButton:(id)sender {
    [sender resignFirstResponder];
}

- (id)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
	// create the parent view that will hold header Label
	UIView* customView = [[UIView alloc] initWithFrame:CGRectMake(10.0, 0.0, 300.0, 44.0)];
	
	// create the button object
	UILabel * headerLabel = [[UILabel alloc] initWithFrame:CGRectZero];
	headerLabel.backgroundColor = [UIColor clearColor];
	headerLabel.opaque = NO;
	headerLabel.textColor = [UIColor whiteColor];
	headerLabel.font = [UIFont boldSystemFontOfSize:16];
	headerLabel.frame = CGRectMake(10.0, 0.0, 300.0, 44.0);
    
	// If you want to align the header text as centered
	// headerLabel.frame = CGRectMake(150.0, 0.0, 300.0, 44.0);
    
	headerLabel.text = [NSString stringWithFormat:@"%s", "Enter User's Allergies"]; // i.e. array element
	[customView addSubview:headerLabel];
    
	return customView;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
	// create the parent view that will hold header Label
	UIView* customView = [[UIView alloc] initWithFrame:CGRectMake(10.0, 0.0, 300.0, 80.0)];
	
	// create the button object
	UILabel * footerLabel = [[UILabel alloc] initWithFrame:CGRectZero];
	footerLabel.backgroundColor = [UIColor clearColor];
	footerLabel.opaque = NO;
	footerLabel.textColor = [UIColor whiteColor];
	footerLabel.font = [UIFont systemFontOfSize:13];
	footerLabel.frame = CGRectMake(10.0, 0.0, 300.0, 80.0);
    footerLabel.numberOfLines = 10;
    
	// If you want to align the header text as centered
	// headerLabel.frame = CGRectMake(150.0, 0.0, 300.0, 44.0);
    
	footerLabel.text = [NSString stringWithFormat:@"%s", "The user's Allergies will be displayed in Emergency Info. screen. for quick access. It will also be displayed through the Allergies option in the Phrase Library."]; // i.e. array element
	[customView addSubview:footerLabel];
    
	return customView;
}

- (void)viewDidLoad {
    
    // Color Theme Background Setup
    CGFloat Red = 15.0/255.0;
    CGFloat Green = 30.0/255.0;
    CGFloat Blue = 70.0/255.0;
    
    NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
    
    UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_blue.jpg"]];
    [backgroundImage setFrame:self.tableView.frame];
    self.tableView.backgroundView = backgroundImage;
    
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload {
    AllergiesListTextField = nil;
    NavigationBar = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

- (IBAction)DoneButton:(id)sender {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Welcome to Express²"
                                                    message:@"Please note that all User Information settings can be modified through the Settings Menu."
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    if(buttonIndex==0) {
        // Hide the keyboard
        [AllergiesListTextField resignFirstResponder];
        
        // Create strings and integer to store the text info
        NSString *AllergiesList = [AllergiesListTextField text];
        
        // Store the data
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:AllergiesList forKey:@"AllergiesList"];
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"hasDoneSetup"];
        [defaults synchronize];
        NSLog(@"Data saved");
        NSLog(@"Has completed setup");
        
        
        [self performSegueWithIdentifier:@"SubmitDone" sender:self];
    }

}

@end
