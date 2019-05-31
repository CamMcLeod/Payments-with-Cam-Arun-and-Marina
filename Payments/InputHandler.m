//
//  InputHandler.m
//  Maths-Game
//
//  Created by Cameron Mcleod on 2019-05-28.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString *)handleString {
    // declare char
    char inputChars[255];
    // take user input for answer
    fgets(inputChars, 255, stdin);
    
    // store  char array as NSString
    NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    
    // trim whitespace and newline characters from NSString
    NSString *trimmedString = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return trimmedString;
}

+(int)handleInt {
    
    int handledInt;
    
    // check if string can be an integer else return 0
    NSString *stringInt = [self handleString];
    if ([stringInt intValue]) {
        handledInt =[stringInt intValue];
    } else {
        handledInt = 0;
    }
    
    return handledInt;
}

@end
