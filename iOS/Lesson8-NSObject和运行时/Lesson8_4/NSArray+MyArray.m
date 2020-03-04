//
//  NSArray+MyArray.m
//  Lesson8_4
//
//  Created by wenhuanhuan on 2020/3/4.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <AppKit/AppKit.h>


@implementation NSArray (MyArray)

#ifdef DEBUG
-(NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level {
    
    if ([NSJSONSerialization isValidJSONObject:self]) {
        NSString *logString;
        @try {
            logString = [[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:nil] encoding:NSUTF8StringEncoding];
        } @catch (NSException *exception) {
            logString = [NSString stringWithFormat:@"打印数组时转换失败：%@",exception.reason];
        } @finally {
            return logString;
        }
    }
    NSMutableString *string = [NSMutableString stringWithString:@"{\n"];
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [string appendFormat:@"\t%@,\n", obj];
    }];
    [string appendString:@"}\n"];
    return string;
}
#endif

@end
