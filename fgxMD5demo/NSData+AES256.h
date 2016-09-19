//
//  NSData+AES256.h
//  fgxMD5demo
//
//  Created by 123 on 16/9/19.
//  Copyright © 2016年 123. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonCryptor.h>

@interface NSData (AES256)

-(NSData *) aes256_encrypt:(NSString *)key;
-(NSData *) aes256_decrypt:(NSString *)key;

@end
