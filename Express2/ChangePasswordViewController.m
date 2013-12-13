//
//  ChangePasswordViewController.m
//  Express2
//
//  Created by Gary Yau on 11/6/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import "ChangePasswordViewController.h"

@interface ChangePasswordViewController ()

@end

@implementation ChangePasswordViewController


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
    
	headerLabel.text = [NSString stringWithFormat:@"%s", "Password Management"]; // i.e. array element
	[customView addSubview:headerLabel];
    
	return customView;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
	// create the parent view that will hold header Label
	UIView* customView = [[UIView alloc] initWithFrame:CGRectMake(10.0, 0.0, 300.0, 90.0)];
	
	// create the button object
	UILabel * footerLabel = [[UILabel alloc] initWithFrame:CGRectZero];
	footerLabel.backgroundColor = [UIColor clearColor];
	footerLabel.opaque = NO;
	footerLabel.textColor = [UIColor whiteColor];
	footerLabel.font = [UIFont systemFontOfSize:13];
	footerLabel.frame = CGRectMake(10.0, 0.0, 300.0, 35.0);
    footerLabel.numberOfLines = 10;
    
	// If you want to align the header text as centered
	// headerLabel.frame = CGRectMake(150.0, 0.0, 300.0, 44.0);
    
	footerLabel.text = [NSString stringWithFormat:@"%s", "Passwords must be 4-characters in length."]; // i.e. array element
	[customView addSubview:footerLabel];
    
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
    
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload {
    EnterOldPasswordTextField = nil;
    EnterNewPasswordTextField = nil;
    ConfirmNewPasswordTextField = nil;
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
    // Hide the keyboard
    [EnterOldPasswordTextField resignFirstResponder];
    [EnterNewPasswordTextField resignFirstResponder];
    [ConfirmNewPasswordTextField resignFirstResponder];
    
    // Create strings and integer to store the text info
    NSString *EnterOldPassword = [EnterOldPasswordTextField text];
    NSString *EnterNewPassword = [EnterNewPasswordTextField text];
    NSString *ConfirmNewPassword = [ConfirmNewPasswordTextField text];
    
    // Get the stored data before the view loads
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *SavedPassword = [defaults objectForKey:@"SavedPassword"];
    
    if (![EnterOldPassword isEqualToString:SavedPassword]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Incorrect Password"
                                                        message:@"The password you've entered is incorrect."
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } else if (![ConfirmNewPassword isEqualToString:EnterNewPassword]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Password Mismatch Error"
                                                        message:@"The passwords you entered do not match."
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } else if (ConfirmNewPasswordTextField.text.length != 4) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Password Length Error"
                                                        message:@"The new password you entered is not 4-characters."
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:ConfirmNewPassword forKey:@"SavedPassword"];
        [defaults synchronize];
        NSLog(@"Data saved");
        [self performSegueWithIdentifier:@"SubmitPassword" sender:self];
    }

}
@end
