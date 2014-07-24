//
//  ViewController.m
//  assessment1
//
//  Created by Nicolas Semenas on 24/07/14.
//  Copyright (c) 2014 Nicolas Semenas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *value1;
@property (weak, nonatomic) IBOutlet UITextField *value2;
@property (weak, nonatomic) IBOutlet UILabel *result;

@end

@implementation ViewController

- (IBAction)onMultiplyButtonPressed:(id)sender {
    
    [self.value1 resignFirstResponder];
    [self.value2 resignFirstResponder];
    
    float float1 = [self.value1.text intValue];
    float float2 = [self.value2.text intValue];
    
    float floatResult = float1 * float2;
    
    self.result.text = [NSString stringWithFormat:@"%f", floatResult];
    
    if (floatResult < 0) {
        self.result.textColor = [UIColor redColor];
    }
    else {
        self.result.textColor = [UIColor greenColor];
    }
}


-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    
    //NOT REQUIRED FOR ASSESSMENT, JUST A BONUS //
    
    textField.text = @"";
    return YES;
}


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.value1.delegate = self;
    self.value2.delegate = self;
    
}

@end
