//
//  ViewController.m
//  My First iOS App
//
//  Created by Rohit Naik on 4/15/18.
//  Copyright © 2018 Rohit Naik. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.myQuotes = @[
                     @"Live and let live",
                     @"Don't cry over spilt milk",
                     @"Always look on the bright side of life",
                     @"Nobody's perfect",
                     @"Can't see the woods for the trees",
                     @"Better to have loved and lost then not loved at all",
                     @"The early bird catches the worm",
                     @"As slow as a wet week"
    ];
    NSString *plistCatPath = [[NSBundle mainBundle] pathForResource:@"quotes" ofType:@"plist"];
    self.movieQuotes = [NSMutableArray arrayWithContentsOfFile:plistCatPath];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)quoteButtonTapped:(id)sender {
    // 1 - Get number of rows in array
//    int array_tot = [self.myQuotes count];
    int array_tot = [self.movieQuotes count];
    // 2 - Get random index
    int index = (arc4random() % array_tot);
    // 3 - Get the quote string for the index
//    NSString *my_quote = self.myQuotes[index];
    NSString *my_quote = self.movieQuotes[index][@"quote"];
    // 4 - Get the source information for the same index
    NSString *quote_sourse = self.movieQuotes[index][@"source"];
    // 5 - Display the quote in the text view
    self.quoteText.text = [NSString stringWithFormat:@"Quote:\n\n%@\n\n\t- %@",  my_quote, quote_sourse];
}
@end
