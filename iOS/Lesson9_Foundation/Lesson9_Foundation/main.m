//
//  main.m
//  Lesson9_Foundation
//
//  Created by wenhuanhuan on 2020/4/3.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <Foundation/Foundation.h>

void test(void);
void test2(void);
void printArray(NSArray * array);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        /**
         对象的可变性
         OC的类有可变的类和不可变的类，这与变量和常量是不同的。可变类生成的对象是可变对象，不可变类生成的对象是不可变对象。
         
         可变对象，不可变对象，变量，常量
         
         可变对象：内容可以改变的对象。
         不可变对象：内容不可以更改的对象。
         变量：值可以更改。
         常量：值不可以更改。
         可变对象可以是常量也可以是变量。
         不可变对象可以是常量，也可以是变量。
         
         对象为什么要区分可变和不可变呢？
         这是为了从实现的复杂度方面考虑的。例如，要允许删除或者增加字符串的某个字母，或者给数组追加成百上千的元素，这就要在一开始设计的时候做好对象的数据结构和方法。如果一开始就确定这个对象是不可变的，那么就不需要为他设计那么复杂的数据结构了，实现起来也简单的多。
         
         */
        
        /**
         例如：给路径"/Users/wenhuanhuan/Desktop/a.txt"更改文件后缀名为"a.bak"
         */
        //test();
        
        test2();
        
        
    }
    return 0;
}

void test() {
    //方法一
    NSString * oldFile2 = @"/Users/wenhuanhuan/Desktop/a.txt";
    NSString * newP = [oldFile2 stringByReplacingOccurrencesOfString:@"a.txt" withString:@"a.bak"];
    NSLog(@"方法一：新的路径： %@", newP);
    
    //方法二
    
    NSString * path = @"/Users/wenhuanhuan/Desktop/a.txt";
    //获取文件名
    NSString * fileName = [path lastPathComponent];
    //删除文件的扩展名
    fileName = [fileName stringByDeletingPathExtension];
    //给文件加上新的扩展名.bak
    fileName = [fileName stringByAppendingPathExtension:@"bak"];
    //重新生成新的路径
    NSString * tempPath = [path stringByDeletingLastPathComponent];
    tempPath = [tempPath stringByAppendingPathComponent:fileName];
    NSLog(@"方法二：新的路径是： %@", tempPath);
    
    
    //方法三
    NSString * oldFile = @"/Users/wenhuanhuan/Desktop/a.txt";
    //分解路径为数组
    NSMutableArray *olds = [NSMutableArray arrayWithArray:[oldFile componentsSeparatedByString:@"/"]];
    //取最后一个元素也就是a.txt
    NSString *lastStr = [olds lastObject];
    //再次分解a.txt为数组，取后缀
    NSMutableArray *oldFileName = [NSMutableArray arrayWithArray:[lastStr componentsSeparatedByString:@"."]];
    //更改后缀
    [oldFileName replaceObjectAtIndex:oldFileName.count - 1 withObject:@"bak"];
    //重新拼接
    [oldFileName insertObject:@"." atIndex:1];
    NSMutableString * tempFileName = [oldFileName componentsJoinedByString:@","].mutableCopy;
    tempFileName = [tempFileName stringByReplacingOccurrencesOfString:@"," withString:@""].mutableCopy;
    [olds removeLastObject];
    [olds addObject:tempFileName];
    
    NSString * newPath = [olds componentsJoinedByString:@"/"];
    NSLog(@"方法三：新路径： %@", newPath);
}

void test2() {
    
    //1.对不可变对象发送copy，无论对象的接收者是可变的还是不可变的,他们的地址不变，是浅拷贝
    NSString * str1 = @"hello";
    NSString * str2 = str1.copy;
    //这是一种不安全的写法，因为mstr2实质上是不可变的，使用mstr2更改其中的元素的时候，会崩溃。
    NSMutableString * mstr2 = str1.copy;
    NSLog(@"str1: %p, str2: %p, mstr2: %p", str1, str2, mstr2);
    
    //使用copy出来的对象都是不可变对象，即使使用可变指针来接收，对象本身依然是不可变的。
//    [mstr2 appendString:@"小苗儿"];//崩溃
//    NSLog(@"%@", mstr2);
    
    //2.对不可变对象发送mutableCopy，地址改变，是深拷贝
    NSString * str3 = str1.mutableCopy;
    NSMutableString * mstr3 = str1.mutableCopy;
    NSLog(@"str1: %p, str3: %p, mstr3: %p", str1, str3, mstr3);
    
    NSLog(@"更改str的值");
    str1 = @"你好！";
    NSLog(@"str1: %p, str2: %p, mstr2: %p", str1, str2, mstr2);
    NSLog(@"str1: %@", str1);
    NSLog(@"str2: %@", str2);
    NSLog(@"mstr2: %@", mstr2);
    NSLog(@"str3: %@", str3);
    NSLog(@"mstr3: %@", mstr3);
    
    //3.对可变对象发送copy,地址改变，是深拷贝
    NSMutableString * ms1 = [NSMutableString stringWithString:@"world"];
    NSString * ims1 = ms1.copy;
    NSMutableString * ms1_1 = ms1.mutableCopy;
    
    //4.对可变对象发送mutableCopy，地址改变，是深拷贝
    NSMutableString * ms2 = ms1.mutableCopy;
    NSLog(@"ms1: %p, ims1: %p, ms1_1: %p, ms2:%p",ms1,ims1,ms1_1,ms2);
    
    ms1 = [NSMutableString stringWithString:@"世界那么大"];
    NSLog(@"ms1: %@", ms1);
    NSLog(@"ims1: %@", ims1);
    NSLog(@"ms1_1: %@", ms1_1);
    NSLog(@"ms2: %@", ms2);
    
    //再来看看NSNumber类型，不能使用mutableCopy哟
    NSNumber * num1 = [NSNumber numberWithInt:20];
    NSNumber * num2 = num1.copy;
    NSNumber * num3 = num1.copy;
    NSLog(@"num1: %p", num1);
    NSLog(@"num2: %p", num2);
    NSLog(@"num3: %p", num3);
    
    num1 = @200;
    NSLog(@"num1: %@, num2: %@, num3: %@", num1, num2, num3);
    
    NSString * s1 = @"明天是个好天气";
    NSString * s2 = s1;
    NSLog(@"更改前， s1: %p, s2: %p", s1, s2);
    s2 = @"下雨啦";
    NSLog(@"更改后，s1: %p, s2: %p", s1, s2);
    NSLog(@"s1: %@, s2: %@", s1, s2);
    
    //单层深拷贝
    printf("\n\n");
    NSArray * array = @[@"1", @"2", @"3"];
    NSArray * array2 = array.copy;
    NSMutableArray * array3 = array.mutableCopy;
    NSArray * array4 = array;
    NSLog(@"array: %p, array2: %p, array3: %p, array4: %p", array, array2, array3, array4);

    printArray(array);
    printArray(array2);
    printArray(array3);
    printArray(array4);
    
    NSLog(@"更改array的值");
    array = @[@"5", @"6", @"7", @"8"];
    NSLog(@"array: %p, array2: %p, array3: %p, array4: %p", array, array2, array3, array4);
    printArray(array);
    printArray(array2);
    printArray(array3);
    printArray(array4);
    
    /**
     单层深拷贝，只是拷贝的数组本身，数组中的元素的地址还是一样的，更改某个元素的值，其他数组也会跟着改变的。
     */
    NSMutableString * obj = [NSMutableString stringWithString:@"one"];
    NSMutableArray * marray = [NSMutableArray arrayWithObjects:obj, @"two", @"three", nil];
    NSMutableArray * marray1 = [marray mutableCopy];
    NSArray * imarray = [marray copy];
    printf("\n\n");
    NSLog(@"数组地址打印：");
    NSLog(@"marray: %p", marray);
    NSLog(@"marray1: %p", marray1);
    NSLog(@"imarray: %p", imarray);
    
    NSLog(@"数组元素的地址打印：");
    printArray(marray);
    printArray(marray1);
    printArray(imarray);
    
    NSLog(@"更改数组第一个元素的值");
    [obj appendString:@" add some datas"];
    NSLog(@"更改后数组元素的地址打印：");
    printArray(marray);
    printArray(marray1);
    printArray(imarray);
    NSLog(@"marray : %@", marray);
    NSLog(@"marray1 : %@", marray1);
    NSLog(@"imarray : %@", imarray);
    
    //方法一：- (instancetype)initWithArray:(NSArray<ObjectType> *)array copyItems:(BOOL)flag;
    NSMutableArray * newArray = [[NSMutableArray alloc] initWithArray:marray copyItems:YES];
    [obj appendString:@" new item"];
    printArray(marray);
    printArray(newArray);
    
    NSMutableString * red = [NSMutableString stringWithString:@"red"];
    NSMutableString * yellow = [NSMutableString stringWithString:@"yellow"];
    NSMutableArray * bigArray = [NSMutableArray arrayWithObjects:marray, red, yellow, nil];
    NSMutableArray * bigArrayCopy = [[NSMutableArray alloc] initWithArray:bigArray copyItems:YES];
    NSMutableString * tempStr = bigArray[0][0];
    [tempStr insertString:@"11111" atIndex:0];
    NSLog(@"bigArray: %@", bigArray);
    NSLog(@"bigArrayCopy: %@", bigArrayCopy);
    
    //方法二，使用归档和解档
    NSMutableArray * myArrayCopy = [NSKeyedUnarchiver unarchiveObjectWithData:[NSKeyedArchiver archivedDataWithRootObject:bigArray]];
    NSMutableString * tempStr2 = bigArray[0][0];
    [tempStr2 insertString:@"0000" atIndex:0];
    NSLog(@"bigArray: %@", bigArray);
    NSLog(@"myArrayCopy: %@", myArrayCopy);
    
    
    NSMutableString * xiaoming = [NSMutableString stringWithString:@"xiaoming"];
    NSMutableArray * names = [NSMutableArray arrayWithObjects:xiaoming, @"xiaohua", @"xiaoli", nil];
    NSMutableArray * students = [NSMutableArray arrayWithObjects:names, @"OC", @"Java", nil];
    NSMutableArray * people = [NSMutableArray arrayWithObjects:students,@"beijing", nil];
    NSMutableArray * peopleCopy = [NSKeyedUnarchiver unarchiveObjectWithData:[NSKeyedArchiver archivedDataWithRootObject:people]];
    NSMutableString * temp = people[0][0][0];
    [temp appendString:@" 100 "];
    NSLog(@"people: %@", people);
    NSLog(@"peopleCopy: %@", peopleCopy);
}

void printArray(NSArray * array) {
    printf("\n");
    for (NSString * obj in array) {
        NSLog(@"%p, %@", obj, obj);
    }
}
