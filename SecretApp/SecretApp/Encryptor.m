//
//  Encryptor.m
//  SecretCode
//
//  Created by GrayLeo on 2017/2/20.
//  Copyright © 2017年 GrayLeo. All rights reserved.
//

#import "Encryptor.h"

@implementation Encryptor

- (NSString *)encryptCode:(NSString *)code {
    NSMutableString *result = [NSMutableString string];
    for (int i = 0; i < code.length; i++) {
        unichar curChar = [code characterAtIndex:i];
        curChar -= 3;
        curChar = curChar ^ [self.secret characterAtIndex:0];
        NSString *curStr = [NSString stringWithCharacters:&curChar length:1];
        [result appendString:curStr];
    }
    return result;
}

- (NSString *)decryptCode:(NSString *)code {
    NSMutableString *result = [NSMutableString string];
    for (int i = 0; i < code.length; i++) {
        unichar curChar = [code characterAtIndex:i];
        curChar = curChar ^ [self.secret characterAtIndex:0];
        curChar += 3;
        NSString *curStr = [NSString stringWithCharacters:&curChar length:1];
        [result appendString:curStr];
    }
    return result;
}

@end
