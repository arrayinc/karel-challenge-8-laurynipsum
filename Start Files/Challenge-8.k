/* File: Challenge-8.k
 ---------------------------
Having heard that programming is at least as much an art as a
science (and being totally clueless about the nature of art),
Karel has decided to enroll in a paint-by-numbers class. In this class,
Karel is presented with a “canvas” containing piles of beepers.

To complete the paint-by-numbers task, all Karel has to do is walk from
left to right across each street, pick up each pile of beepers, and then
redistribute the beepers from that pile, one at a time,
on each successive corner.

Your job is to write the program that converts a paint-by-number picture
of this sort into the corresponding completed masterpiece. In writing the program,
Karel can count on the following facts about the world:

• The world contains an arbitrary number of beeper piles but no interior walls.

• The beeper piles never have so many beepers that they cause Karel to run into
a wall or another beeper pile.

• Karel always starts facing east in the southwest corner
(1st Street and 1st Avenue) with an empty beeper bag.

• Karel must finish execution facing east at the northeast corner of the world.
*/

import "turns";


function moveThroughRow(){
	while(frontIsClear()){
		move();
		while(beepersPresent()){
			pickBeeper();
		}
		while(beepersInBag()){
			putBeeper();
			move();
		}
	}
}

function turnBackAround(){
	turnAround();
	while(frontIsClear()){
		move();
	}
	turnRight();
	if(frontIsClear()){
		move();
	}
	turnRight();
}
function Solve(){
	while(leftIsClear()){
		moveThroughRow();
		turnBackAround();
	}
}
