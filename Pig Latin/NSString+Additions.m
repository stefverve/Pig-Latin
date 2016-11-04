//
//  NSString+Additions.m
//  Pig Latin
//
//  Created by Stefan Verveniotis on 2016-11-04.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "NSString+Additions.h"

@implementation NSString (NSString_Additions)

- (NSString *) stringByPigLatinization {
    NSArray *words = [[NSArray alloc] initWithArray:[self componentsSeparatedByString:@" "]];
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"];
    NSMutableString *output = [NSMutableString new];
    for (NSString *currentWords in words) {
        NSString *prefix = [NSString new];
        [[NSScanner scannerWithString:currentWords] scanUpToCharactersFromSet:vowels intoString:&prefix];
        [output appendString:[[[currentWords substringFromIndex:prefix.length] stringByAppendingString:prefix] stringByAppendingString:@"ay "]];
    }
    return output;
}
@end
