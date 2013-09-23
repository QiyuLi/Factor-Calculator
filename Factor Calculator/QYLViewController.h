//
//  QYLViewController.h
//  Factor Calculator
//
//  Created by LICH on 9/22/13.
//  Copyright (c) 2013 Qiyu Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QYLViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *inputText;
@property (weak, nonatomic) IBOutlet UITextField *outputText;

- (IBAction)textFiledReturnEditing:(UITextField *)sender;
- (IBAction)backgroundTap:(id)sender;

- (IBAction)calButton:(UIButton *)sender;

@end
