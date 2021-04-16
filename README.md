# corall

I've created this package with two main goals in mind: 
- Firstly, to write something blazing-fast in pure R, only calling C functions when it's literally the way it's implemented in R/stats. Anybody can write all the code in C++, but where's fun in that? This project was supposed to teach me to write better R code, not C++.
- Secondly, to make life easier for me and my friends when it comes to doing *less-than-favourite* research under the watchful eye of a supervisor that might only approve the simplest (if not the weakest) statistical methods. 

I definitely succeeded with that second part, and the first one is 50/50. The thing produces 500^2 values in 5 seconds, so, definitely not the fastest in the world, but considerably faster than vanilla user-level R. A little bit of prettiness in the results on top of that, and, I'm kind of satisfied.

## What does it do?

0. (A very hacky preliminary step that shouldn't be done but still will be because we all value our time)  Throws away all columns of a data frame that aren't numeric (and thus can't be correlated).
1. Creates a correlation matrix, based on an input matrix, data frame, or similar. It computes the estimates and p-values as well.
2. Passes this matrix to an FDR-correcting function. Yes, if one wants proper research, one must pinpoint factors that might correlate, and check only those - this will (quote on quote) ensure deep(er) understanding of phenomena of interest, but if we are already forced to use cor.tests as a machine gun and not as a sniper rifle, let's at least do our best to keep false positives under control. I used Benjamini-Hochberg method.
3. Formats the output to be more readable, and makes a .xlsx file out of it
4. Unleashes a VBA-based beautifier upon the output, to make the output not just bearable, but pleasing to look at.

All steps except the first one can be customised or skipped, correlation methods are customisable as well, everything is made to save time and nerves - nobody likes doing these unholy correlations instead of actual research, so the faster it is done, the better. Maybe a hard refresh of the education system would be the best, but I'd rather spend my time writing R code, I love it.

Speaking of things that I love, this package was brought to you with lots of ❤️ and lack of 😴, dear user. Enjoy but don't overdo it :)

(if you only want to see the source code, i've put it in the "src" branch just for the sake of it)

## The output looks something like this
![image](https://user-images.githubusercontent.com/53195438/113226005-c6535880-9297-11eb-99b3-fbd3a2d9d80b.png)
