//
//  ViewController.m
//  fgxMD5demo
//
//  Created by 123 on 16/9/19.
//  Copyright © 2016年 123. All rights reserved.
//

#import "ViewController.h"
#import "CJMD5.h"
#import "NSString+AES256.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //MD5加密(MD5是不可逆的只有加密没有解密,在线解密网站http://www.cmd5.com )
    NSString *password = @"12345678";
    NSString * md5=[CJMD5 md5:password];
    NSLog(@"加密结果=%@",md5);
    
    //AES加密
    NSString *encryptedData = [password aes256_encrypt:@""];//加密
    NSString *message = [encryptedData aes256_decrypt:@""]; //解密
    NSLog(@"加密结果=%@",encryptedData);
    NSLog(@"解密结果=%@",message);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
