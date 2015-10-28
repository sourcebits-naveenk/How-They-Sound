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
- (IBAction)buttonPressedForSoundOfCow:(id)sender {
    AnimalDetails *cow = [[AnimalDetails alloc] init];
    cow.animalName = @"Cow";
    cow.animalSound = @"Maaa";
    
    [ self displayAnimalSound:cow];
    
   }
/**
 *  Defining method for CAT button
 *
 *  @param sender Displays the output how cat sounds
 */

- (IBAction)buttonPressedForSoundOfCat:(id)sender {
    AnimalDetails *cat = [[AnimalDetails alloc] init];
    cat.animalName = @"Cat";
    cat.animalSound = @"Meow";
    
    [self displayAnimalSound:cat];
    
   }
/**
 *  Defining method for DOG button
 *
 *  @param sender Displays the output how dog sounds
 */

- (IBAction)buttonPressedForSoundOfDog:(id)sender {
    AnimalDetails *dog = [[AnimalDetails alloc]init];
    dog. animalName = @"Dog";
    dog.animalSound = @"Boww";
    
    [self displayAnimalSound:dog];
    //_labelForDisplayingDogSound.text = @"Dog says Boww";
    //NSLog(@"Dog says Boww");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  Method to display sounds
 *
 *  @param animal 
 */
-(void)displayAnimalSound: (AnimalDetails *)animal {
    _labelForDisplayofSound.text = animal.animalSound;
    NSLog( @"%@ says %@",animal.animalName, animal.animalSound );
}
@end


