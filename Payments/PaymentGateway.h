//
//  PaymentGateway.h
//  Payments
//
//  Created by Cameron Mcleod on 2019-05-31.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentGatewayDelegate

-(void)ProcessPaymentAmount: (NSInteger) paymentAmount;

-(BOOL)canProcessPayment;

@end

@interface PaymentGateway : NSObject

@property (weak) id <PaymentGatewayDelegate> delegate;

-(void)ProcessPaymentAmount: (NSInteger) paymentAmount;

@end

NS_ASSUME_NONNULL_END
