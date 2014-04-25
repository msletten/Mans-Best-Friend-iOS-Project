//
//  MSMBFViewController.m
//  Man's Best Friend
//
//  Created by Mat Sletten on 4/10/14.
//  Copyright (c) 2014 Mat Sletten. All rights reserved.
//

#import "MSMBFViewController.h"
#import "MSMBFDog.h"
#import "MSMBFPuppy.h"

@interface MSMBFViewController ()

@end

@implementation MSMBFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    MSMBFDog *myDog = [[MSMBFDog alloc] init];
    myDog.name = @"Bella";
    myDog.breed = @"St. Bernard";
    myDog.age = 7;
    myDog.image = [UIImage imageNamed:@"St.Bernard.JPG"];
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    self.currentIndex = 0;
    
    MSMBFDog *secondDog = [[MSMBFDog alloc] init];
    secondDog.name = @"Morgan";
    secondDog.breed = @"Jack Russell Terrier";
    secondDog.age = 3;
    secondDog.image = [UIImage imageNamed:@"JRT.jpg"];
    
    MSMBFDog *thirdDog = [[MSMBFDog alloc] init];
    thirdDog.name = @"Sharkey";
    thirdDog.breed = @"Greyhoud";
    thirdDog.age = 6;
    thirdDog.image = [UIImage imageNamed:@"ItalianGreyhound.jpg"];
    
    MSMBFDog *fourthDog = [[MSMBFDog alloc] init];
    fourthDog.name = @"Tyrone";
    fourthDog.breed = @"Border Collie";
    fourthDog.age = 9;
    fourthDog.image = [UIImage imageNamed:@"BorderCollie.jpg"];
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    
    MSMBFPuppy *littlePuppy = [[MSMBFPuppy alloc] init];
    [littlePuppy bark];
    
    littlePuppy.name = @"Bo O";
    littlePuppy.breed = @"Portuguese Water Dog";
    littlePuppy.age = 3;
    littlePuppy.image = [UIImage imageNamed:@"Bo.jpg"];
    
    [self.myDogs addObject:littlePuppy];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)printHelloWorld
{
    NSLog(@"Hello World");
}

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender
{
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    
    if (self.currentIndex == randomIndex && self.currentIndex == 0) {
        randomIndex ++;
    }
    else if (self.currentIndex == randomIndex){
        randomIndex --;
    }
    MSMBFDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    
    self.myImageView.image = randomDog.image;
    self.breedLabel.text = randomDog.breed;
    self.nameLabel.text = randomDog.name;
    self.currentIndex = randomIndex;
    
    
    
//    [UIView transitionWithView:self.view duration:2.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
//        self.myImageView.image = randomDog.image;
//        self.breedLabel.text = randomDog.name;
//        self.nameLabel.text = randomDog.name;
//    } completion:^(BOOL finished) {
//        
//    }];
//    sender.title = @"And Another";
}

@end
