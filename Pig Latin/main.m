//
//  main.m
//  Pig Latin
//
//  Created by Stefan Verveniotis on 2016-11-04.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+Additions.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"\nstring to be Pig Latinized:");
        char str[255];
        fgets (str, 255, stdin);
        NSString *inputString = [[[NSString alloc] initWithUTF8String:str] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSLog(@"%@", inputString.stringByPigLatinization);
    }
    return 0;
}
