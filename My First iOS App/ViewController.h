//
//  ViewController.h
//  My First iOS App
//
//  Created by Rohit Naik on 4/15/18.
//  Copyright © 2018 Rohit Naik. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) NSArray *myQuotes;
@property (nonatomic, strong) NSMutableArray *movieQuotes;
// The thing that follows IBOutlet is the interface element on the XIB file that the object can be linked to
@property (nonatomic, strong) IBOutlet UITextView *quoteText;

- (IBAction)quoteButtonTapped:(id)sender;

@end

