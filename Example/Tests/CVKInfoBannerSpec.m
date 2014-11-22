//
//  CVKInfoBannerSpec.m
//  CVKInfoBanner
//
//  Created by Romans Karpelcevs on 18/11/14.
//  Copyright 2014 Romans Karpelcevs. All rights reserved.
//

#import <Specta/Specta.h>
#import <Expecta+Snapshots/EXPMatchers+FBSnapshotTest.h>
#import "CVKInfoBanner.h"
#import "CVKTestCommons.h"

SpecBegin(CVKInfoBanner)

describe(@"CVKInfoBanner view", ^{
    __block CVKInfoBanner *banner;

    it(@"should show compact red one", ^{
        banner = bannerFromHelper(kShortBannerText, CVKInfoBannerStyleError);
        expect(banner).will.haveValidSnapshotNamed(deviceSpecificName());
        [banner removeFromSuperview];
        banner = bannerManual(kShortBannerText, CVKInfoBannerStyleError);
        expect(banner).will.haveValidSnapshotNamed(deviceSpecificName());
    });

    it(@"should show long red one", ^{
        banner = bannerFromHelper(kLongBannerText, CVKInfoBannerStyleError);
        expect(banner).will.haveValidSnapshotNamed(deviceSpecificName());
        [banner removeFromSuperview];
        banner = bannerManual(kLongBannerText, CVKInfoBannerStyleError);
        expect(banner).will.haveValidSnapshotNamed(deviceSpecificName());
    });

    it(@"should show compact green one", ^{
        banner = bannerFromHelper(kShortBannerText, CVKInfoBannerStyleInfo);
        expect(banner).will.haveValidSnapshotNamed(deviceSpecificName());
        [banner removeFromSuperview];
        banner = bannerManual(kShortBannerText, CVKInfoBannerStyleInfo);
        expect(banner).will.haveValidSnapshotNamed(deviceSpecificName());
    });

    afterEach(^{
        [banner removeFromSuperview];
    });
});

SpecEnd
