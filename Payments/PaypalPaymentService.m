//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Cameron Mcleod on 2019-05-31.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)ProcessPaymentAmount:(NSInteger)paymentAmount {
    
    NSLog(@"Paypal processed amount: %lu", paymentAmount);
    
}

@end
