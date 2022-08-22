# workout-cards-objc
Coding challenge that shows a horizontal collection of cards styles to guidelines.

# Video Demo
https://user-images.githubusercontent.com/1415689/185831964-806bac4a-19dc-47dd-a956-cc81806fa6f7.mov

## Disclaimer
It has been around 8 years since I last programmed anything in Objective-C. I enjoyed the challenge of scrambling to refresh my archived knowledge over the weekend.

This version is a working version only. I spent around double the time to get it to this state with most of my time spent on getting the WorkoutCardView right.

While I can perform all the requests competently in Swift and SwiftUI, I had to find some code snippets for Objective-C. 
- JSON loading and parsing.
- Fetching of an image data task.

I also referenced the 2013 Fall Standford resources. If I am to be a successful applicant, I would undertake this course in the 4 weeks leading up to my starting date.

## Reflections
- I am looking forward to working as part of a team developing features for users.
- I spent large chunks of the weekend engaged on the task. I enjoyed having the deadline and proved to myself that I'll enjoy working in Objective-C and working autonously to meet deadlines.
- I haven't worked with interface builder and storyboard in 8 years (SwiftUI is incredible in comparision).
- Interface builder problems
-- Getting views positioned correctly.
-- Loading a custom view in a ViewController (took a while to find this solution.)
-- At this stage, I would struggle to create a view programmatically in Objective-C.
- Hilariously, I was trying to add workoutCards as subViews to a horizontal stack contained within a scrollView. Then I recalled CollectionViews.

## Known issues
- Does not account for memory management (dealloc etc.).
- Does not handle errors for JSON loading/parsing and image download requests (see SwiftUI version of what I would do). 
- Isn't best practice (see SwiftUI version for better practice).
- You'd probably want to do some unit testing of the urls.
- You would want to show a progress view while the view is loading (see SwiftUI demo).
