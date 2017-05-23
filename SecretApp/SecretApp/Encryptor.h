//
//  Encryptor.h
//  SecretCode
//
//  Created by GrayLeo on 2017/2/20.
//  Copyright © 2017年 GrayLeo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Encryptor : NSObject
@property (nonatomic, strong) NSString *secret;

- (NSString *)encryptCode:(NSString *)code;

- (NSString *)decryptCode:(NSString *)code;

@end
