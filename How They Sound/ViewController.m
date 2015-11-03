//
//  ViewController.m
//  How They Sound
//
//  Created by Naveen Katari on 07/10/15.
//  Copyright (c) 2015 Sourcebits. All rights reserved.
//

#import "ViewController.h"
#import "AnimalDetails.h"

@interface ViewController ()
{
    //AVAudioPlayer *audioPlayer;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
/**
 * Defining method for COW button
 *
 *  @param sender Displays the ouput how cow sounds
 */
- (IBAction)buttonPressedForSoundOfCow:(id)sender
{
    AnimalDetails *cow = [[AnimalDetails alloc] init];
    cow.animalName = @"Tiger";
    cow.animalSound = @"Roar";
    cow.numberOfLegs = @"I have 4 legs";
    
    [ self displayAnimalSound:cow];
    
}
/**
 *  Defining method for CAT button
 *
 *  @param sender Displays the output how cat sounds
 */

- (IBAction)buttonPressedForSoundOfCat:(id)sender
{
    AnimalDetails *cat = [[AnimalDetails alloc] init];
    cat.animalName = @"Cat";
    cat.animalSound = @"Meow";
    cat.numberOfLegs = @"I have 4 legs";
    
    [self displayAnimalSound:cat];
    
}
/**
 *  Defining method for DOG button
 *
 *  @param sender Displays the output how dog sounds
 */

- (IBAction)buttonPressedForSoundOfDog:(id)sender
{
    AnimalDetails *dog = [[AnimalDetails alloc]init];
    dog.animalName = @"Dog";
    dog.animalSound = @"Boww";
    dog.numberOfLegs = @"I have 4 legs";
    
    [self displayAnimalSound:dog];
    
}

-(IBAction)buttomPressedForSoundofDuck:(id)sender
{
    AnimalDetails *duck = [[AnimalDetails alloc]init];
    duck.animalName = @"Duck";
    duck.animalSound = @"Quack";
    duck.numberOfLegs = @"I have 2 legs";
    
    [self displayAnimalSound:duck];
}

-(IBAction)buttomPressedForSoundofCrow:(id)sender
{
    AnimalDetails *crow = [[AnimalDetails alloc]init];
    crow.animalName = @"Crow";
    crow.animalSound = @"Kaw Kaw";
    crow.numberOfLegs = @"I have 2 legs";
    
    [self displayAnimalSound:crow];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  Method outputs sound of a specific animal
 *  @param animal 
 */
-(void)displayAnimalSound: (AnimalDetails *)animal {
    
    
    
    _labelForDisplayofSound.text = animal.animalSound;
    _labelDispayingNumberOfLegs.text = animal.numberOfLegs;
    NSLog( @"%@ says %@",animal.animalName, animal.animalSound );
    
    
    NSString *resourcePath = [[NSBundle mainBundle] resourcePath];
    NSString *path = [NSString stringWithFormat:@"%@/%@.mp3", resourcePath,animal.animalName];
    
    NSURL *url = [NSURL fileURLWithPath:path];
    NSError *error = nil;
    
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    [_audioPlayer play];
    
}
@end


