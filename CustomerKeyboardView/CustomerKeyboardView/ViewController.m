//
//  ViewController.m
//  CustomerKeyboardView
//
//  Created by hennychen on 3/1/17.
//  Copyright © 2017 hennychen. All rights reserved.
//

#import "ViewController.h"
#import "HCinfoTextView.h"

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    HCinfoTextView * txtaccessoryview = [[HCinfoTextView alloc] initWithFrame:CGRectMake(0.0, 0.0, SCREEN_WIDTH, 30.0)];
            txtaccessoryview.scrollItem = @[@"陈陈陈",@"吃吃吃"];
    
    
    txtaccessoryview.backgroundColor = [UIColor whiteColor];
    self.txtField.inputAccessoryView = txtaccessoryview;
    txtaccessoryview.delegate = self.txtField;
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
