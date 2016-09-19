//
//  NSString+AES256.h
//  fgxMD5demo
//
//  Created by 123 on 16/9/19.
//  Copyright © 2016年 123. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (AES256)

-(NSString *) aes256_encrypt:(NSString *)key;//加密
-(NSString *) aes256_decrypt:(NSString *)key;//解密

@end
