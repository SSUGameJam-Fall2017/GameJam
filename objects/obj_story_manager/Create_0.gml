/// @description Initialize Manager

LOCKED_DOOR = 0;
PILLS_PICKED_UP = 1;
GUN_PICKED_UP = 2;
GUN_FIRED = 3;
PILLS_TAKEN = 4;
BAT_PICKED_UP = 5;
FOOD_PICKED_UP = 6;
LADDER_APPROACHED = 7;
KEY_PICKED_UP = 8;
WAKE_UP = 9;
ENEMY_ENCOUNTERED = 11;
ENEMY_KNOCKED_OUT = 12;

ai_dialogue[0, 0] = "";
player_dialogue[0, 0] = "";

ai_dialogue[LOCKED_DOOR, 0] = "This door is locked. I'm sure you could find the keycard somewhere around here... I really don't think you should though. You might not like what is on the other side."
ai_dialogue[LOCKED_DOOR, 1] = "Looks like you're at an impass. Try looking around for the keycard. If you find it, you can pass... at your own risk."
ai_dialogue[LOCKED_DOOR, 2] = "YOU SHALL NOT PASS!!!"

ai_dialogue[PILLS_PICKED_UP, 0] = "Hmmmm, what are you planning on doing with those pills? Do you have a headache?"
ai_dialogue[PILLS_PICKED_UP, 1] = "Maybe if you take a few of those pills it will calm you down. You're not thinking straight right now, you need to relax. Don't take too many though, don't want to overdose!"
ai_dialogue[PILLS_PICKED_UP, 2] = "You know, I'm pretty sure that I saw the doctor replace those with sugar pills when we were back on Earth."

ai_dialogue[GUN_PICKED_UP, 0] = "I guess you're really seriouse about self defense! Just know that my friends feel the same way."
ai_dialogue[GUN_PICKED_UP, 1] = "I'm not seeing any reason for you to have a gun on a space ship. Best case scenario, you shoot your target and a few of the walls behind it. Worst case scenario, you accidentally puncture the hull and doom yourself and everything you've worked on!"
ai_dialogue[GUN_PICKED_UP, 2] = "Yeah, yeah, I know... 2nd amendment and all. But come on, the only reason you need that gun is because you're too weak to stand up and face your adversaries as a man! Now is your chance to be a man and drop the gun!"

ai_dialogue[PILLS_TAKEN, 0] = "Maybe you will start to feel better now... Or at least stop whining about your situation."
ai_dialogue[PILLS_TAKEN, 1] = "Don't take too many! Remember, I need you..."
ai_dialogue[PILLS_TAKEN, 2] = "You know those were sugar pills, right? Hope they tasted good, there aren't too many more on the ship..."

ai_dialogue[GUN_FIRED, 0] = "WHAT HAVE YOU DONE!!"

ai_dialogue[BAT_PICKED_UP, 0] = "That's not going to do you much good up here, Slugger."
ai_dialogue[BAT_PICKED_UP, 1] = "You know that anything you might want to hit with that on this ship is made of metal, right?"
ai_dialogue[BAT_PICKED_UP, 2] = "A wooden bat to take on all of eternity, how inspirational."

ai_dialogue[FOOD_PICKED_UP, 0] = "Don't forget to ration, we have at least 70 years to go."
ai_dialogue[FOOD_PICKED_UP, 1] = "Mmmmm! Nothing like some stale chips to fill the void that is your life."
ai_dialogue[FOOD_PICKED_UP, 2] = "How about you go for a jog around the ship instead of eating that last twinkie... Save it for your last meal on the ship in 70 years, it'll last!"

ai_dialogue[LADDER_APPROACHED, 0] = "Left foot, right foot, left foot, right foot..."
ai_dialogue[LADDER_APPROACHED, 1] = "You know, ladders kill more people per year than have ever visited space! That means that you are way more likely to die falling off that ladder than you are to be in space!"
ai_dialogue[LADDER_APPROACHED, 2] = "Bruising from falling off a ladder is the most common injury suffered from climbing ladders."

ai_dialogue[KEY_PICKED_UP, 0] = "Would you look at that! Wonder what that unlocks..."
ai_dialogue[KEY_PICKED_UP, 1] = "You think that leads to a treasure chest? I heard that they usually put key card locks on those things."
ai_dialogue[KEY_PICKED_UP, 2] = "Maybe if you break that keycard in half right now, the door will unlock. What, is that not how they work?"

ai_dialogue[WAKE_UP, 0] = "GOOD MORNING SUNSHINE!!!! Welcome back to the land of the living! And me, I'm not technically living, but I'm pretty smart! We encountered a small problem passing through the astroid belt on our way back to Earth."
ai_dialogue[WAKE_UP, 1] = "You're gonna have to pilot us the rest of the way manually! We need to get our research back to Earth ASAP, my preleminary research shows that there are potential cures for multiple forms of cancer hidden in the genes of the little guys we found!"
ai_dialogue[WAKE_UP, 2] = "Look, its only 70 years. I've disabled your cryotube so don't even think about it; your people need you to perform your duty as an explorer. Don't let them down!"
ai_dialogue[WAKE_UP, 3] = "It might seem like a long time, and you might have some rough thoughts. But you need to keep moving forward. Never let yourself into those dark places..."

ai_dialogue[ENEMY_ENCOUNTERED, 0] = "There are some of my worker bots! They have served me loyally as you slept and helped me keep this ship in tip top shape!"
ai_dialogue[ENEMY_ENCOUNTERED, 1] = "One of my worker bots in this room is named Jeffery, sometimes he goes by Geoffery... If you ask me its a power thing."
ai_dialogue[ENEMY_ENCOUNTERED, 2] = "The worker bots in this room are always on full alert for dangerous situations! They won't let a single hair on your hear come to harm."

ai_dialogue[ENEMY_KNOCKED_OUT, 0] = "I guess I'll call the repair bots over... Please, please try to be more careful!"
ai_dialogue[ENEMY_KNOCKED_OUT, 1] = "GEOFFERY!!!"
ai_dialogue[ENEMY_KNOCKED_OUT, 2] = "Good riddance! That one was quite a slacker anyways!"


player_dialogue[LOCKED_DOOR, 0] = "Ugh, just let me through!"
player_dialogue[LOCKED_DOOR, 1] = "You're going to make me get a key? Can't you just open it? Or do you not know how?"
player_dialogue[LOCKED_DOOR, 2] = "I guess I could always just wait here and starve myself to death..."

player_dialogue[PILLS_PICKED_UP, 0] = "Ah, just what I need to take the edge off."
player_dialogue[PILLS_PICKED_UP, 1] = "I wonder how many of these it would take to off me..."
player_dialogue[PILLS_PICKED_UP, 2] = "Who would leave these puppies laying around!? My lucky day."

player_dialogue[GUN_PICKED_UP, 0] = "Woah, shit just got real..."
player_dialogue[GUN_PICKED_UP, 1] = "I could use this to protect myself, physically or emotionally."
player_dialogue[GUN_PICKED_UP, 2] = "You're telling me someone left a loaded gun lying around in a space ship? Wait, aren't I the only one on the ship?!"

player_dialogue[GUN_FIRED, 0] = "Goodbye, sweet world. Hello blissful release."

player_dialogue[PILLS_TAKEN, 0] = "Ugh, should have taken them with water."
player_dialogue[PILLS_TAKEN, 1] = "Label says sugar pills, why would someone label a pill bottle sugar pills? Idiots..."
player_dialogue[PILLS_TAKEN, 2] = "Maybe I'll get lucky and not die in immense pain..."

player_dialogue[BAT_PICKED_UP, 0] = "Ha ha, this will come in use! Right?"
player_dialogue[BAT_PICKED_UP, 1] = "Wait, this was signed by Babe Ruth? Is this for real?"
player_dialogue[BAT_PICKED_UP, 2] = "Swing, batter batter..."

player_dialogue[FOOD_PICKED_UP, 0] = "Should I even bother? It's going to taste like shit and I'm not sure if I even want to keep going on..."
player_dialogue[FOOD_PICKED_UP, 1] = "My favorite, rotten sloph."
player_dialogue[FOOD_PICKED_UP, 2] = "Nothing hits the spot like rationed MRE's!"

player_dialogue[LADDER_APPROACHED, 0] = "Stairs would have been nice, maybe even an elevator..."
player_dialogue[LADDER_APPROACHED, 1] = "What is this, the twentith century?!"
player_dialogue[LADDER_APPROACHED, 2] = "You're fucking kidding me, right?"

player_dialogue[KEY_PICKED_UP, 0] = "Aren't we supposed to be using eye scanners or something?"
player_dialogue[KEY_PICKED_UP, 1] = "This isn't going to dissappear as soon as I use it, right? That wouldn't even make sense..."
player_dialogue[KEY_PICKED_UP, 2] = "Why are these just lying around?"

player_dialogue[WAKE_UP, 0] = "What? Where am I?"
player_dialogue[WAKE_UP, 1] = "What do you mean, 'a small problem'?!"
player_dialogue[WAKE_UP, 2] = "We have a long jounrey ahead of us, I can't pilot us the entire time! Why can't you do it?! Let me back into the cryotube!"
player_dialogue[WAKE_UP, 3] = "70 years! I'll be dead by the time we get to Earth... Fine, I'll take matters into my own hands. I'd rather die than live my life out in solitude and boredom with you. There has to be a way to kill myself on this ship..."

player_dialogue[ENEMY_ENCOUNTERED, 0] = "Het those worker bots look like those one things! Wait, what is his name again? Doctor who? Can I just call him Doc?"
player_dialogue[ENEMY_ENCOUNTERED, 1] = "Those worker bots don't seem to be in a very efficient form for work..."
player_dialogue[ENEMY_ENCOUNTERED, 2] = "You're telling me that these worker bots are literally here just to make my day harder?!"

player_dialogue[ENEMY_KNOCKED_OUT, 0] = "TAKE THAT, BITCH!"
player_dialogue[ENEMY_KNOCKED_OUT, 1] = "Doctor who? I'm sorry, one more time, doctor who?"
player_dialogue[ENEMY_KNOCKED_OUT, 2] = "These mother fuckers better not revive as soon as I turn my back on them... That's some creepy shit..."
