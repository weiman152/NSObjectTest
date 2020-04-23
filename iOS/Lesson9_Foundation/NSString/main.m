//
//  main.m
//  NSString
//
//  Created by wenhuanhuan on 2020/4/3.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>

void test1(void);
void test2(void);
void test3(void);
void test4(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        //test1();
        
        //test2();
        
        //test3();
        
        test4();
    }
    return 0;
}

//1.操作Unicode编码的字符串
void test1() {
    //unichar是两字节长的char，代表unicode的一个字符，和char有所不同。
    /**
     1.C字符串转化为OC的字符串
     initWithUTF8String,从以NULL结束的UTF-8编码的C字符串中复制信息，生成OC的字符串。
     */
    const char * strC = "hello, sun -> 你好，太阳";
    NSString * str1 = [[NSString alloc] initWithUTF8String:strC];
    NSLog(@"str1: %@", str1);
    
    /**
     2. OC的字符串转C语言的字符串
     */
    NSString * str2 = @"今天是个好天气";
    const char * strC2 = [str2 UTF8String];
    NSLog(@"strC2: %s", strC2);
    
    //3. 获取字符串的长度
    NSString * str3 = @"today is a good day!";
    NSInteger length = str3.length;
    NSLog(@"str3的字符串长度： %ld", (long)length);
    
    //4.返回某个位置的字符
    NSString * str4 = @"nice to meet tou";
    unichar c = [str4 characterAtIndex:3];
    NSLog(@"字符c = %c", c);
    
    NSString * str5 = @"明天会下雨吗？";
    unichar c2 = [str5 characterAtIndex:3];
    NSLog(@"字符c2 = %C", c2);
    
    //崩溃：Range or index out of bounds'
//    unichar c3 = [str5 characterAtIndex:10];
//    NSLog(@"字符c3 = %C", c3);
    
    //5.用C语言的部分字符串初始化一个OC的字符串对象
    const unichar ch = 100;
    NSString * str6 = [[NSString alloc] initWithCharacters:&ch length:3];
    NSLog(@"%@", str6);
}

//2.编码转换
void test2() {
    /**
     C风格或者字节类型的字符串和NSString之间是可以互相转换的。OC定义了枚举类型的
     NSStringEncoding,保存在NSString的头文件中，有多种类型。
     */
    
    /**
     1. 使用C语言初始化，并且选择编码方式
     */
    const char * strC = "路飞越来越莽撞了，一点也不可爱。";
    NSString * str1 = [[NSString alloc] initWithCString:strC encoding:NSUTF8StringEncoding];
    NSLog(@"str1: %@", str1);
    
    //便利构造器
    NSString * str2 = [NSString stringWithCString:strC encoding:NSUTF8StringEncoding];
    NSLog(@"str2: %@", str2);
    
    //换换别的编码看看
    NSString * str3 = [NSString stringWithCString:strC encoding:NSJapaneseEUCStringEncoding];
    NSLog(@"str3: %@", str3);
    
    //2. 返回C语言的字符串，并选择编码方式
    NSString * str4 = @"我们都是好孩子";
    const char * strC2 = [str4 cStringUsingEncoding:NSUTF8StringEncoding];
    NSLog(@"strC2: %s", strC2);
    
    //3. Data和NSString互相转换
    NSString * str5 = @"这里开始转Data了";
    NSData * data = [str5 dataUsingEncoding:NSUTF8StringEncoding];
    
    NSString * str6 = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"data: %@", data);
    NSLog(@"str6: %@",str6);
    
    //4. 判断当前环境是否可以转换为某种编码
    NSString * str7 = @"春天花开万物生";
    if ([str7 canBeConvertedToEncoding:NSUTF32StringEncoding]) {
        NSLog(@"支持NSUTF32StringEncoding编码");
    } else {
        NSLog(@"不支持NSUTF32StringEncoding编码");
    }
    
    //对特殊字符进行替换（主要针对URL）
    NSString * str8 = @" https://www.baidu.com ";
    NSString * str9 = [str8 stringByAddingPercentEncodingWithAllowedCharacters:NSCharacterSet.lowercaseLetterCharacterSet];
    NSLog(@"str9: %@",str9);
    
}

//3.生成指定格式的字符串
void test3() {
    /**
     当使用%@输出一个对象的时候，实际上是调用该对象的description方法。
     */
    NSArray * array = @[@1, @2];
    NSLog(@"array: %@",array);
    
    NSString * str = @"这是一个数组";
    NSString * str2 = [NSString stringWithFormat:@"%@,%@", str, array];
    NSLog(@"%@", str2);
}

//4.字符串比较
void test4() {
    
    /**
     字符串比较的结果是一个枚举类型，有三种结果，升序，降序和相等
     NSComparisonResult
     
     typedef NS_CLOSED_ENUM(NSInteger, NSComparisonResult) {
         NSOrderedAscending = -1L,
         NSOrderedSame,
         NSOrderedDescending
     };
     
     NSOrderedAscending： a>b
     NSOrderedSame: a=b
     NSOrderedDescending:a<b

     */
    
    NSString * str1 = @"hello";
    NSString * str2 = @"hi";
    
    NSProxy
    
    //NSDistantObject
    //NSXPCConnection
    //NSProtocolChecker
    //NSDistantObjectRequest
}
