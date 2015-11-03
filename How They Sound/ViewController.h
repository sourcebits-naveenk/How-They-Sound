//
//  ViewController.h
//  How They Sound
//
//  Created by Naveen Katari on 07/10/15.
//  Copyright (c) 2015 Sourcebits. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController <AVAudioPlayerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *labelForDisplayofSound;
@property (weak, nonatomic) IBOutlet UILabel *labelDispayingNumberOfLegs;
@property (strong, nonatomic) AVAudioPlayer *audioPlayer;

@end

