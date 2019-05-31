//
//  ApplePaymentService.m
//  Payments
//
//  Created by Marina Mona June McPeak on 2019-05-31.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (void)ProcessPaymentAmount:(NSInteger)paymentAmount {
    
    NSLog(@"ApplePay processed amount: %lu", paymentAmount);
    
}

- (BOOL)canProcessPayment {
    
    return arc4random_uniform(2);
    
}

@end
