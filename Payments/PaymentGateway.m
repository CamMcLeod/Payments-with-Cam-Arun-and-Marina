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
    
    [self.delegate ProcessPaymentAmount:paymentAmount];
    
}

@end
