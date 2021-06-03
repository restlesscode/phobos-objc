//
//  FSCalendarConstane.m
//  FSCalendar
//
//  Created by dingwenchao on 8/28/15.
//  Copyright © 2016 Wenchao Ding. All rights reserved.
//
//  https://github.com/WenchaoD
//

#import "FSCalendarConstants.h"

CGFloat const FSCalendarStandardHeaderHeight = 40;
CGFloat const FSCalendarStandardWeekdayHeight = 25;
CGFloat const FSCalendarStandardMonthlyPageHeight = 300.0;
CGFloat const FSCalendarStandardWeeklyPageHeight = 108+1/3.0;
CGFloat const FSCalendarStandardCellDiameter = 100/3.0;
CGFloat const FSCalendarStandardSeparatorThickness = 0.5;
CGFloat const FSCalendarAutomaticDimension = -1;
CGFloat const FSCalendarDefaultBounceAnimationDuration = 0.15;
CGFloat const FSCalendarStandardRowHeight = 38;
CGFloat const FSCalendarStandardTitleTextSize = 13.5;
CGFloat const FSCalendarStandardSubtitleTextSize = 10;
CGFloat const FSCalendarStandardWeekdayTextSize = 14;
CGFloat const FSCalendarStandardHeaderTextSize = 16.5;
CGFloat const FSCalendarMaximumEventDotDiameter = 4.8;

NSInteger const FSCalendarDefaultHourComponent = 0;

NSString * const FSCalendarDefaultCellReuseIdentifier = @"_FSCalendarDefaultCellReuseIdentifier";
NSString * const FSCalendarBlankCellReuseIdentifier = @"_FSCalendarBlankCellReuseIdentifier";
NSString * const FSCalendarInvalidArgumentsExceptionName = @"Invalid argument exception";

CGPoint const CGPointInfinity = {
    .x =  CGFLOAT_MAX,
    .y =  CGFLOAT_MAX
};

CGSize const CGSizeAutomatic = {
    .width =  FSCalendarAutomaticDimension,
    .height =  FSCalendarAutomaticDimension
};


@implementation FSCalendarConstants

+ (UIColor*) standardSelectionColor {
    if (@available(iOS 13.0, *)) {
        return [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
                return FSCalendarStandardSelectionColorDark;
            } else {
                return FSCalendarStandardSelectionColorLight;
            }
        }];
    } else {
        return FSCalendarStandardSelectionColorLight;
    }
}

+ (UIColor*) standardTodayColor {
    if (@available(iOS 13.0, *)) {
        return [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
                return FSCalendarStandardTodayColorDark;
            } else {
                return FSCalendarStandardTodayColorLight;
            }
        }];
    } else {
        return FSCalendarStandardTodayColorLight;
    }
}

+ (UIColor*) standardTitleTextColor {
    if (@available(iOS 13.0, *)) {
        return [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
                 return FSCalendarStandardTitleTextColorDark;
            } else {
                return FSCalendarStandardTitleTextColorLight;
            }
        }];
    } else {
        return FSCalendarStandardTitleTextColorLight;
    }
}

+ (UIColor*) standardEventDotColor {
    if (@available(iOS 13.0, *)) {
        return [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
            if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
                return FSCalendarStandardEventDotColorDark;
            } else {
                return FSCalendarStandardEventDotColorLight;
            }
        }];
    } else {
        return FSCalendarStandardEventDotColorLight;
    }
}

@end

