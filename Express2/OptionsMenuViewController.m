//
//  OptionsMenuViewController.m
//  Express2
//
//  Created by Gary Yau on 10/19/12.
//  Copyright (c) 2012 TEAM X.I.S. All rights reserved.
//
//  View code versions and changelogs @ https://github.com/TeamXIS/Express2/commits/
//

#import "OptionsMenuViewController.h"

@interface OptionsMenuViewController ()

@end

@implementation OptionsMenuViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    // Color Theme Setup
    if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 0) {
        CGFloat Red = 15.0/255.0;
        CGFloat Green = 30.0/255.0;
        CGFloat Blue = 70.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        
        UIImage* backgroundImage = [UIImage imageNamed:@"bg_blue.jpg"];
        [customBackground setImage:backgroundImage];
        
        UIImage* backgroundSettings = [UIImage imageNamed:@"button_blue_settings.png"];
        [SettingsButton setBackgroundImage:backgroundSettings forState:UIControlStateNormal];
        UIImage* backgroundChangePassword = [UIImage imageNamed:@"button_blue_changepassword.png"];
        [ChangePasswordButton setBackgroundImage:backgroundChangePassword forState:UIControlStateNormal];
        UIImage* backgroundTutorials = [UIImage imageNamed:@"button_blue_tutorials.png"];
        [TutorialsButton setBackgroundImage:backgroundTutorials forState:UIControlStateNormal];
        UIImage* backgroundErrorReport = [UIImage imageNamed:@"button_blue_errorreport.png"];
        [ErrorReportButton setBackgroundImage:backgroundErrorReport forState:UIControlStateNormal];
        UIImage* backgroundCredits = [UIImage imageNamed:@"button_blue_credits.png"];
        [CreditsButton setBackgroundImage:backgroundCredits forState:UIControlStateNormal];
    }
    else if ([[NSUserDefaults standardUserDefaults] integerForKey:@"ColorTheme"] == 1) {
        CGFloat Red = 10.0/255.0;
        CGFloat Green = 130.0/255.0;
        CGFloat Blue = 35.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        
        UIImage* backgroundImage = [UIImage imageNamed:@"bg_green.jpg"];
        [customBackground setImage:backgroundImage];
        
        UIImage* backgroundSettings = [UIImage imageNamed:@"button_green_settings.png"];
        [SettingsButton setBackgroundImage:backgroundSettings forState:UIControlStateNormal];
        UIImage* backgroundChangePassword = [UIImage imageNamed:@"button_green_changepassword.png"];
        [ChangePasswordButton setBackgroundImage:backgroundChangePassword forState:UIControlStateNormal];
        UIImage* backgroundTutorials = [UIImage imageNamed:@"button_green_tutorials.png"];
        [TutorialsButton setBackgroundImage:backgroundTutorials forState:UIControlStateNormal];
        UIImage* backgroundErrorReport = [UIImage imageNamed:@"button_green_errorreport.png"];
        [ErrorReportButton setBackgroundImage:backgroundErrorReport forState:UIControlStateNormal];
        UIImage* backgroundCredits = [UIImage imageNamed:@"button_green_credits.png"];
        [CreditsButton setBackgroundImage:backgroundCredits forState:UIControlStateNormal];
    }
    else {
        CGFloat Red = 55.0/255.0;
        CGFloat Green = 15.0/255.0;
        CGFloat Blue = 120.0/255.0;
        
        NavigationBar.tintColor = [UIColor colorWithRed:Red green:Green blue:Blue alpha:1.0];
        
        UIImage* backgroundImage = [UIImage imageNamed:@"bg_purple.jpg"];
        [customBackground setImage:backgroundImage];
        
        UIImage* backgroundSettings = [UIImage imageNamed:@"button_blue_settings.png"];
        [SettingsButton setBackgroundImage:backgroundSettings forState:UIControlStateNormal];
        UIImage* backgroundChangePassword = [UIImage imageNamed:@"button_purple_changepassword.png"];
        [ChangePasswordButton setBackgroundImage:backgroundChangePassword forState:UIControlStateNormal];
        UIImage* backgroundTutorials = [UIImage imageNamed:@"button_purple_tutorials.png"];
        [TutorialsButton setBackgroundImage:backgroundTutorials forState:UIControlStateNormal];
        UIImage* backgroundErrorReport = [UIImage imageNamed:@"button_purple_errorreport.png"];
        [ErrorReportButton setBackgroundImage:backgroundErrorReport forState:UIControlStateNormal];
        UIImage* backgroundCredits = [UIImage imageNamed:@"button_purple_credits.png"];
        [CreditsButton setBackgroundImage:backgroundCredits forState:UIControlStateNormal];
    }

    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload {
    customBackground = nil;
    SettingsButton = nil;
    ChangePasswordButton = nil;
    TutorialsButton = nil;
    ErrorReportButton = nil;
    NavigationBar = nil;
    CreditsButton = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)ErrorReportButton:(id)sender {
    
    if ([MFMailComposeViewController canSendMail]) {
        
        MFMailComposeViewController *mail = [[MFMailComposeViewController alloc] init];
        mail.mailComposeDelegate = self;
        [mail setSubject:@"ExpressSquared Error Report"];
        
        NSArray *toRecipients = [NSArray arrayWithObjects:@"gky2@sfu.ca",@"bbc6@sfu.ca",@"damand@sfu.ca",@"ffurtado@sfu.ca",@"jzwiep@sfu.ca", nil];
        [mail setToRecipients:toRecipients];
        
        NSString *emailBody = @"<b>Name:</b> <font color='#666666'>(Enter Name Here)</font><br> <b>Date:</b> <font color='#666666'>(Enter Date Here)</font><br><br> <b>Problem Description:</b><br> <font color='#666666'>(Enter Problem Description)</font><br>";
        [mail setMessageBody:emailBody isHTML:YES];
        
        mail.modalPresentationStyle = UIModalPresentationPageSheet;
        [self presentModalViewController:mail animated:YES];
        
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:@"E-mail is not supported on your device."
                                                        delegate:nil
                                               cancelButtonTitle:@"OK"
                                               otherButtonTitles:nil];
        [alert show];
    }
    
}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    
    UIAlertView *alert;
    
    switch (result) {
        case MFMailComposeResultCancelled:
            NSLog(@"Error Report E-mail cancelled.");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Error Report E-mail saved in drafts folder.");
            alert = [[UIAlertView alloc] initWithTitle:@"Fail"
                message:@"Your error report has not be saved as a draft."
                delegate:nil
                cancelButtonTitle:@"OK"
                otherButtonTitles:nil];
            [alert show];
            break;
        case MFMailComposeResultSent:
            NSLog(@"Error Report E-mail sent.");
            alert = [[UIAlertView alloc] initWithTitle:@"Success"
                message:@"Your error report has been submitted."
                delegate:nil
                cancelButtonTitle:@"OK"
                otherButtonTitles:nil];
            [alert show];
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Error Report E-mail not sent due to error.");
            alert = [[UIAlertView alloc] initWithTitle:@"Fail"
                message:@"Your error report has not be sent due to an error."
                delegate:nil
                cancelButtonTitle:@"OK"
                otherButtonTitles:nil];
            [alert show];
            break;
        default:
            NSLog(@"Mail not sent.");
            break;
    }
    
    [self dismissModalViewControllerAnimated:YES];
}

@end
