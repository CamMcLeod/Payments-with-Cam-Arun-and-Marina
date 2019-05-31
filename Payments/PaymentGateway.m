//
//  PaymentGateway.m
//  Payments
//
//  Created by Cameron Mcleod on 2019-05-31.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)ProcessPaymentAmount: (NSInteger) paymentAmount {
    
    if ( [self.delegate canProcessPayment]) {
        
        [self.delegate ProcessPaymentAmount:paymentAmount];
        
    }
    else {
        
        NSLog(@"Your payment of $%ld.00 could not be processed. We apologize for any inconvenience this may have caused.", (long)paymentAmount);
        
    }
    
}

@end
