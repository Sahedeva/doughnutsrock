# JS CALCULATOR
Are you tired of using the same old boring calculator to multiply two numbers? Let's mix things up with our own JavaScript calculator.

In today's lab you're going to build a snazzy webpage that allows users to perform some mathematical operations on two numbers.

## THE DEETS

### PREPARE
- Review your notes on manipulating the HTML DOM with JavaScript
 
### REQUIREMENTS
- The user should be able to specify two numbers to calculate, as well as a simple arithmetic operation to perform (addition, subtraction, multiplication, division).
- The calculator should calculate the result of the operation and display it to the user. Then the calculator should reset itself (clear the form fields) to ready itself for the next calculation.
- There should be a running list of all the calculations that have been performed so far underneath the calculator itself. Once a calculation is performed, the results of calculation should be added to the list.

### INSTRUCTIONS

**Step One - Planning**
- Plan out at a high level how your calculator will work. Try to consider as many potential roadblocks as possible beforehand, so you have a plan to deal with them later. Some questions to consider are:
    + How will you get input from users?
    + How will you determine what operation to perform?
    + How will you display results to users?
    + What technologies will you use and why?
    + Are there any other potential roadblocks, and how will you overcome them?

**Step Two - Design your page**
- This doesn't have to be formally drawn up, use your desk or any of the whiteboards in the room to plan it out

**Step Three - Write the HTML**
- Remember to use semantic markup where you can!
- Link your CSS in an external stylesheet
- Use a heading for the title of this project
- Remember, the numbers chosen and the result should be visible on the page

**Step Four - Write the CSS**
- Remember the `display: inline-block` properties that will help you with your layout
- Feel free to use a CSS grid or framework if you want to practice with it, but don't feel obligated to.
- Add some styles! Make it yours.

**Step Five - Write the JavaScript**
- Obtain the numbers we need using one of the methods discussed this week
- Calculate and display the answer chosen
- Make sure you're checking the output of your code frequently so you know if you're on track or not. Don't write all the code in one fell swoop and only check after it's all done - check periodically instead. 

**Step Six - Test and Refactor**
- Use the debugging techniques we discussed to find and destroy any bugs in the code.
- Test out lots of different calculations to make sure there are no "edge cases" that you might not have thought of.
- Refactor your code to be more efficient, more readable, and more DRY.

#### BONUS
- Allow the user to perform more operations than just the 4 basic ones listed above. Perhaps allow users to calculate exponents, or calculate square roots? Get creative with it.
- Use a `switch` statement (rather than an `if/else if/else`) to calculate the correct result depending on what operator they chose and present it.
- Try to refactor your code to make it as DRY as possible. Use functions to clean up repetitive code and avoid global variables.
- If you get done very early, you can research [`localStorage`](https://developer.mozilla.org/en-US/docs/Web/API/Window/localStorage) and try to use it to "save" the calculations that have been performed even after the user reloads the page. [DiveIntoHTML5](http://diveintohtml5.info) has a great article on [`localStorage`](http://diveintohtml5.info/storage.html).

### PRESENTATIONS!! 
- Demo
- Talk about your process
- Lows and Highs