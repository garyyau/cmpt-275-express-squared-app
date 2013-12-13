//
//  EmerContactsViewController.m
//  Express2
//
//  Created by Gary Yau on 10/29/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import "EmerContactsViewController.h"

@interface EmerContactsViewController ()

@end

@implementation EmerContactsViewController


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
    
    if ((NSInteger)section == 0) {
        headerLabel.text = [NSString stringWithFormat:@"%s", "Emergency Contact #1"]; // i.e. array element
        [customView addSubview:headerLabel];
    } else if ((NSInteger)section == 1) {
        headerLabel.text = [NSString stringWithFormat:@"%s", "Emergency Contact #2"]; // i.e. array element
        [customView addSubview:headerLabel];
    }
    
	return customView;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
	// create the parent view that will hold header Label
	UIView* customView = [[UIView alloc] initWithFrame:CGRectMake(10.0, 0.0, 300.0, 60.0)];
	
	// create the button object
	UILabel * footerLabel = [[UILabel alloc] initWithFrame:CGRectZero];
	footerLabel.backgroundColor = [UIColor clearColor];
	footerLabel.opaque = NO;
	footerLabel.textColor = [UIColor whiteColor];
	footerLabel.font = [UIFont systemFontOfSize:13];
	footerLabel.frame = CGRectMake(10.0, 0.0, 300.0, 60.0);
    footerLabel.numberOfLines = 10;
    
	// If you want to align the header text as centered
	// headerLabel.frame = CGRectMake(150.0, 0.0, 300.0, 44.0);
    
    if ((NSInteger)section == 1) {
        footerLabel.text = [NSString stringWithFormat:@"%s", "WARNING: Pressing SAVE will save the current information on screen and any previous information will be overwritten."];
        [customView addSubview:footerLabel];
    }
    
	return customView;
}

- (void)viewDidLoad {
    // Color Theme Background Setup
    if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 0) {
        CGFloat Red = 15.0/255.0;
        CGFloat Green = 30.0/255.0;
        CGFloat Blue = 70.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_blue.jpg"]];
        [backgroundImage setFrame:self.tableView.frame];
        self.tableView.backgroundView = backgroundImage;
    } else if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 1) {
        CGFloat Red = 10.0/255.0;
        CGFloat Green = 130.0/255.0;
        CGFloat Blue = 35.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_green.jpg"]];
        [backgroundImage setFrame:self.tableView.frame];
        self.tableView.backgroundView = backgroundImage;
    } else {
        CGFloat Red = 55.0/255.0;
        CGFloat Green = 15.0/255.0;
        CGFloat Blue = 120.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_purple.jpg"]];
        [backgroundImage setFrame:self.tableView.frame];
        self.tableView.backgroundView = backgroundImage;
    }
    
    // Get the stored data before the view loads
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *Emer1FirstName = [defaults objectForKey:@"Emer1FirstName"];
    NSString *Emer1LastName = [defaults objectForKey:@"Emer1LastName"];
    NSString *Emer1Phone = [defaults objectForKey:@"Emer1Phone"];
    NSString *Emer1Rel = [defaults objectForKey:@"Emer1Rel"];
    NSString *Emer2FirstName = [defaults objectForKey:@"Emer2FirstName"];
    NSString *Emer2LastName = [defaults objectForKey:@"Emer2LastName"];
    NSString *Emer2Phone = [defaults objectForKey:@"Emer2Phone"];
    NSString *Emer2Rel = [defaults objectForKey:@"Emer2Rel"];
    
    // Update the UI element with the saved data
    Emer1FirstNameTextField.text = Emer1FirstName;
    Emer1LastNameTextField.text = Emer1LastName;
    Emer1PhoneTextField.text = Emer1Phone;
    Emer1RelTextField.text = Emer1Rel;
    Emer2FirstNameTextField.text = Emer2FirstName;
    Emer2LastNameTextField.text = Emer2LastName;
    Emer2PhoneTextField.text = Emer2Phone;
    Emer2RelTextField.text = Emer2Rel;
    
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload {
    Emer1FirstNameTextField = nil;
    Emer1LastNameTextField = nil;
    Emer1PhoneTextField = nil;
    Emer1RelTextField = nil;
    Emer2FirstNameTextField = nil;
    Emer2LastNameTextField = nil;
    Emer2PhoneTextField = nil;
    Emer2RelTextField = nil;
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

- (IBAction)SubmitButton:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Save Confirmation"
                                                    message:@"All previous data will be overwritten. Are you sure you want to save?"
                                                   delegate:self
                                          cancelButtonTitle:@"YES"
                                          otherButtonTitles:@"NO", nil];
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if(buttonIndex==0) {
        // Hide the keyboard
        [Emer1FirstNameTextField resignFirstResponder];
        [Emer1LastNameTextField resignFirstResponder];
        [Emer1PhoneTextField resignFirstResponder];
        [Emer1RelTextField resignFirstResponder];
        [Emer2FirstNameTextField resignFirstResponder];
        [Emer2LastNameTextField resignFirstResponder];
        [Emer2PhoneTextField resignFirstResponder];
        [Emer2RelTextField resignFirstResponder];
        
        // Create strings and integer to store the text info
        NSString *Emer1FirstName = [Emer1FirstNameTextField text];
        NSString *Emer1LastName = [Emer1LastNameTextField text];
        NSString *Emer1Phone = [Emer1PhoneTextField text];
        NSString *Emer1Rel = [Emer1RelTextField text];
        NSString *Emer2FirstName = [Emer2FirstNameTextField text];
        NSString *Emer2LastName = [Emer2LastNameTextField text];
        NSString *Emer2Phone = [Emer2PhoneTextField text];
        NSString *Emer2Rel = [Emer2RelTextField text];
        
        // Store the data
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:Emer1FirstName forKey:@"Emer1FirstName"];
        [defaults setObject:Emer1LastName forKey:@"Emer1LastName"];
        [defaults setObject:Emer1Phone forKey:@"Emer1Phone"];
        [defaults setObject:Emer1Rel forKey:@"Emer1Rel"];
        [defaults setObject:Emer2FirstName forKey:@"Emer2FirstName"];
        [defaults setObject:Emer2LastName forKey:@"Emer2LastName"];
        [defaults setObject:Emer2Phone forKey:@"Emer2Phone"];
        [defaults setObject:Emer2Rel forKey:@"Emer2Rel"];
        [defaults synchronize];
        NSLog(@"Data saved");
        [self performSegueWithIdentifier:@"SubmitEmerContacts" sender:self];
    }
}
@end
