In this practice project, we will be practicing with labels, buttons, and layouts. There will be three screens total.

Screen 1 - Rainbow
Mock: https://zpl.io/awn9J87

In this screen, you will be creating 6 labels that say "Red", "Orange", etc.
They will have the colors corresponding to their text.
The tricky bit here is that you may notice this view controller does not have a xib.
You will need to manually create the views and add them as subviews to self.view.


Screen 2 - Counter
Mock: https://zpl.io/aRovxZr

On this creen, you will be creating a basic counter app.
- Inside BViewController.xib, create one label and two buttons.
- Create outlets for the labels and buttons.
- Inside viewDidLoad, style (set the font and colors) the labels and buttons.
  Button color should be #7ED321 (This is a hex code)
- Also inside viewDidLoad, set the initial text of the labels and buttons
  Label text should start as "0"
  Buttons should say "-" and "+"
- Add handler methods for the minus button and the plus button
- Create a property on this view controller of type Int that represents the count.
- Inside the handler methods for the buttons, adjust this property by +1 or -1, then reconfigure the text of the label.


Screen 3 - Move
Mock: https://zpl.io/2jke5z4

In this screen, you will be building an interactive box.
- Inside CViewController.xib, Create a view and four buttons.
- Create outlets for the labels and buttons
- Add handler methods for all the buttons.
- Inside the handler methods for the buttons, adjust the box's frame to move its x and y value by 20 each time (either left, up, down, or right :))

