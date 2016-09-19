//
//  CJMD5.m
//  shareTest
//
//  Created by 123 on 16/4/20.
//  Copyright © 2016年 123. All rights reserved.
//

#import "CJMD5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation CJMD5

+(NSString *)md5:(NSString *) input {
    const char *cStr = [input UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5( cStr, (CC_LONG)strlen(cStr), digest );
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [output appendFormat:@"%02x", digest[i]];
    
    return  output;
}

@end
