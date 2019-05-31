//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Cameron Mcleod on 2019-05-31.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void)ProcessPaymentAmount:(NSInteger)paymentAmount {
    
   NSLog(@"Amazon processed amount: %lu", paymentAmount);
    
}

@end
