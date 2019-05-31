//
//  StripePaymentService.m
//  Payments
//
//  Created by Cameron Mcleod on 2019-05-31.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void)ProcessPaymentAmount:(NSInteger)paymentAmount {
    
    NSLog(@"Stripe processed amount: %lu", paymentAmount);
    
}

- (BOOL)canProcessPayment {
    
    return arc4random_uniform(2);
    
}


@end
