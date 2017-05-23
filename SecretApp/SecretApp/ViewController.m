//
//  ViewController.m
//  SecretApp
//
//  Created by GrayLeo on 2017/2/20.
//  Copyright © 2017年 GrayLeo. All rights reserved.
//

#import "ViewController.h"
#import "Encryptor.h"

@interface ViewController ()
@property (nonatomic, strong) Encryptor *encryptor;
@property (weak, nonatomic) IBOutlet UITextField *sourceTextField;
@property (weak, nonatomic) IBOutlet UITextField *secretTextField;
@property (weak, nonatomic) IBOutlet UITextField *resultTextField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.encryptor = [[Encryptor alloc] init];
}

- (IBAction)encryptAction:(id)sender {
    if (!self.sourceTextField.text.length || !self.secretTextField.text.length) return;
    self.encryptor.secret = self.secretTextField.text;
    NSString *result = [self.encryptor encryptCode:self.sourceTextField.text];
    self.resultTextField.text = result;
}

- (IBAction)decryptAction:(id)sender {
    if (!self.sourceTextField.text.length || !self.secretTextField.text.length) return;
    self.encryptor.secret = self.secretTextField.text;
    NSString *result = [self.encryptor decryptCode:self.sourceTextField.text];
    self.resultTextField.text = result;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}


@end
