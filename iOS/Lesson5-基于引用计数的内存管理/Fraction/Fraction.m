//
//  Fraction.m
//  Fraction
//
//  Created by wenhuanhuan on 2020/2/17.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

#define SIGN(a) (((a) >= 0) ? 1 : (-1))

//计算两个整数的最大公约数,辗转相除法，递归
static int gcd(int a, int b) {
    if (a < b)  return gcd(b, a);
    if (b == 0) return a;
    return gcd(b, a % b);
}

//用于约分的私有方法
- (void)reduce {
    int d;
    if (fenzi == 0) {
        fenmu = 1;
        sgn = 1;
        return;
    }
    
    if (fenmu == 0) {
        fenzi = 1;
        NSLog(@"分母不能为0");
        return;
    }
    
    if ((d = gcd(fenzi, fenmu)) == 1) {
        return;
    }
    
    fenzi = fenzi / d;
    fenmu = fenmu / d;
}

+ (id)fractionWithfenzi:(int)n fenmu:(int)m {
    id f = [[self alloc] initWithfenzi:n fenmu:m];
    return f;
}

-(id)initWithfenzi:(int)n fenmu:(int)m {
    self = [super init];
    if (self != nil) {
        sgn = SIGN(n) * SIGN(m);
        fenzi = abs(n); //C语言 abs() 函数用于求整数的绝对值。
        fenmu = abs(m);
        [self reduce];
    }
    return self;
}

- (Fraction *)add:(Fraction *)obj {
    int n, d;
    
    if (fenmu == obj->fenmu) {
        //分母相同，分子相加
        n = sgn * fenzi + obj->sgn * obj->fenzi;
        d = fenmu;
    } else {
        //分母不同，先通分，再分子相加，最后约分
        int t = sgn * fenzi * obj->fenmu;
        int v = obj->sgn * obj->fenzi * fenmu;
        n = t + v;
        d = fenmu * obj->fenmu;
    }
    return [Fraction fractionWithfenzi:n fenmu:d];
}

- (Fraction *)sub:(Fraction *)obj {
    Fraction * tmp;
    int n = -1 * obj->sgn * obj->fenzi;
    tmp = [Fraction fractionWithfenzi:n fenmu:obj->fenmu];
    return [self add:tmp];
}

- (Fraction *)mul:(Fraction *)obj {
    int n = sgn * obj->sgn * fenzi * obj->fenzi;
    int d = fenmu * obj->fenmu;
    return [Fraction fractionWithfenzi:n fenmu:d];
}

- (Fraction *)div:(Fraction *)obj {
    int n = sgn * obj->sgn * fenzi * obj->fenmu;
    int d = fenmu * obj->fenzi;
    return [Fraction fractionWithfenzi:n fenmu:d];
}

- (NSString *)desc {
    int n = (sgn >= 0) ? fenzi : -fenzi;
    return (fenmu == 1)
    ? [NSString stringWithFormat:@"%d",n]
    : [NSString stringWithFormat:@"%d/%d", n, fenmu];
}

@end
