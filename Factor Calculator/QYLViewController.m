//
//  QYLViewController.m
//  Factor Calculator
//
//  Created by LICH on 9/22/13.
//  Copyright (c) 2013 Qiyu Li. All rights reserved.
//

#import "QYLViewController.h"

@interface QYLViewController ()

@end

@implementation QYLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textFiledReturnEditing:(UITextField *)sender {
    [self resignFirstResponder];
}

- (IBAction)backgroundTap:(id)sender {
    [self.inputText resignFirstResponder];
}

- (IBAction)calButton:(UIButton *)sender {
    [self calFactors];
}

- (void)calFactors {
    NSString *inputText = self.inputText.text;
    int input = [inputText intValue];
    
    NSMutableArray *array;
    array = [NSMutableArray arrayWithCapacity:100];
    
    for (int i=1; i<=input; i++) {
        if (input%i == 0) {
            [array addObject:[NSString stringWithFormat:@"%d", i]];
        }
        
    }

    self.outputText.text = [array description];
}

@end
