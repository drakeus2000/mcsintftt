VAR M1 = 0
VAR M2 = 0
VAR M3 = 0
VAR M4 = 0
VAR M5 = 0
VAR M6 = 0
VAR M7 = 0
VAR M8 = 0
VAR M9 = 0
VAR M10 = 0
VAR M11 = 0
VAR M12 = 0
VAR M13 = 0
VAR M14 = 0
VAR M15 = 0
VAR M16 = 0
VAR M17 = 0
VAR M18 = 0
VAR M19 = 0
VAR M20 = 0
VAR M21 = 0
VAR M22 = 0
VAR M23 = 0
VAR M24 = 0

VAR Gameprogress = 0
VAR No_of_death = 0

VAR protagonist_sex = "M"
VAR opposer = ""
VAR helper = ""
VAR object = ""
VAR protagonist = ""
VAR realm = ""

VAR gender_bool = true
VAR gender_possesive = "his"
VAR gender ="him" 
VAR name = ""
VAR pronoun ="He"

VAR Chapter3_badguys = ""

VAR old_name = ""
VAR game_progress = 0

VAR gde_je_bio = ""

->Start




== Start ==

Stefan Dobrosavljevic Master Work Generated Tale - Slovak Version v.06 Alpha

*[NEXT]

-Welcome, Bienvenue or should (and I probably should) say ahoj, my friend, to this little adventure we have prepared for you. 

-You are going on a journey, but not just any other journey where you will be pulled from one scene to another by the deterministic, linear pull of things. Oh, no. This is a special journey. 

-Your choices may at certain moments modify the story flow. Its trough your choices that the hero will get to save the girl or the kingdom, be helped by gods or animals etc. these are all natural developments, and remember there are no wrong answers.

-Well, almost no bad answers. There will be a few points in the story where you can die.

*[E, dofrasa]

-Oh, but let me not scare you my friend. These are little tests, easily avoidable, meant just to see if you are paying attention. Mind to notice. there is nothing fun there - If you die, we restart,  your adventure will go on, but results will not be as relevant. And you won’t get the super secret bonus at the end.

Also, mind this! And follow the story well! You can’t go back. Once a choice is made, it’s made. It’s saved, locked in a little box and till you finish the game will stay like that.

Let us begin, shall we?

*[NEXT]

CHAPTER I

->m2


==m2==
-A long time ago it happened, or might have never been, that there was a small realm high in the mountains that rose over the great eastern plains. The realm was ruled by:

+   A Cisár
    --A good and kind man, loved and adored for his abilities, who ruled over his subjects firmly and justly, making sure all are happy and full of belly.
    ~M2 = 1
    ~realm = "empire"

+   A Kralj
    --A good man, who allowed his subjects freedoms in daily affairs, yet took stern rules and regulations, in order for his small realm to function properly. He was respected and looked with love.
    ~M2 = 2
    ~realm = "kingdom"

+   A Vojvoda
    --a simple man, relying on his God given right to rule. He kept peace, but allowed liberties to his people. They were in precarious balance, the rules of the land and freedom of the people. He was looked with respect and kindness.
    ~M2 = 3
    ~realm = "vojvodstvo"

+   A Knieža
    --a man of some experience, who directed people and had the ability to bring small laws and directions. His existence was often overlooked.
    ~M2 = 4
    ~realm = " kniežatstvo "

+  A Šľachtic
    --Even though, nominally run by Šľachtic, no man held single importance, but people gathered together to discuss matters and bring rules.
    ~M2 = 5
    ~realm = "barony"

    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- -> Question1_1
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->m2
    


->END

==Question1_1==

-And in this {realm}, hidden amongst everglades and high mountains there existed a small house hidden high above the misty tops. And in this house
* lived a boy <>
    --by the name of
    **[Jozef]
    ~name = "Jozef"
    **[Ján]
    ~name = "Ján"
    **[Peter]
    ~name = "Peter"
    **[Martin]
    ~name = "Martin"

* lived a girl <>
    --by the name of
    **[Mária]
    ~name = "Mária"
    ~gender_bool=false
    ~gender_possesive = "her"
    ~gender ="her" 
    ~pronoun ="She"
    **[Anna]
    ~name = "Anna"
    ~gender_bool=false
    ~gender_possesive = "her"
    ~gender ="her" 
    ~pronoun ="She"
    **[Zuzana]
    ~name = "Zuzana"
    ~gender_bool=false
    ~gender_possesive = "her"
    ~gender ="her" 
    ~pronoun ="She"
    **[Katarína]
    ~name = "Katarína"
    ~gender_bool=false
    ~gender_possesive = "her"
    ~gender ="her" 
    ~pronoun ="She"

    
-<> by the name of 
{ gender_bool==true:
    <> {name}, a strapping young lass, strong as 20 men, and brave as so many. A hero of great fame.
- else:
    <> {name}, a beautiful young maiden, but stronger and quicker than any man in the five mountain ranges and beyond.
}
~old_name=name
->m6


==m6

-{name} often lay on the rolling meadows overlooking the misty slopes dreaming of <>

+   Exciting and dangerous adventures risking one's life for great gains. <>
    --Over the seas of never returning, past the edges of known maps, where it was written "Here be dragons." With a magical sword, conquering kingdoms and becoming a benevolent ruler. Excitement and accomplishment was all {name} dreamed of.
    ~M6 = 1
    ~object = "kingdom"
+   Exciting adventures for good gains and some benefit to the people. <>
    --To try what noone has done before, experience great travels, taking risks, but knowing where the boundaries are, for man is mortal and needs some wisdom in his actions. To rule a small realm and help out people under {gender}.
    ~M6 = 2
    ~object = "kingdom"
+   Travel a lot, see the kingdom and its splendors, and yet come back to one's home and build the community. <>
    --With some risk in his life, and yet with some prudence of his responsibilities to the people of one's own village. An adventure, and a warm home and nice people to wait for one at the end of the day.
    ~object = "kingdom"
    ~M6 = 3
+   A little bit of excitement, but always in regards to the people around {gender}
    --To help Adventures are great, but if they are not to help lives of one's around they are vainglorious. One needed a little bit of adventure in {gender_possesive} life, but never forgetting the greater role one is given in the world of others.
    ~object = "love"
    ~M6 = 4
+  To help and improve the lives of {name}'s family, neighbors and friends.
    --For {name} was grateful for the warm and comfortable life that the village community had given to {gender}. {name} wanted to build, to teach, to give and improve the lives of all. {pronoun} wanted to love and be loved.
    ~object = "love"
    ~M6 = 5
    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- ->m8
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->m6
    


==m8

{name} often looked at the house {pronoun} was born in. It was a

+   A small villa
    --A rich tall house left over by {gender_possesive} parents at an great location towards the village center. One neighbor was the village elder, a position of great power, the other the village priest.
    ~M8 = 1
+   A well off house
    --A remnant of the better times family had had. Once all the slopes were covered by his great grandfathers sheep and cow, now left to wilderness to reclaim. Still the house's foundations were good, and location attractive.
    ~M8 = 2
+   A house like any other
    --Just a house like his neighbor, and the one after that, and the one after them. {name}'s family had lived in the village for generations. They were neither poor nor rich. A hard working family like all those around them.
    ~M8 = 3
+   A small, yet sturdy hut on the outskirts
    --A shepherd's hut, towards the outskirts. Place where young {name} first saw the light of day. Even though the location was not as attractive, {pronoun} loved the sheep covers and the warm coziness of the wooden walls.
    ~M8 = 4
+  A wooden hut in the meadows away from the village
    --Ever since the death of {gender_possesive} parents, grandfather had left the place to dwindle. Even though it was the most run down hut on the slopes, {name} didn't care for the smell of grass, and the call of the mountain air made the location irrelevant, and the snicker of others just a faint echo.
    ~M8 = 5
    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- ->Question3_1
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->m8


==Question3_1

{name} lived with {gender_possesive} grandfather who was an old shepherd and had taken care of {gender} ever since {pronoun} was a small child. He had told tales of faraway places and mystical lands. Of dragons, or draks with 7 heads  and their mighty fire breath that swooped and ate whole flocks of sheep. Of great and evil Veterný kráľ, who kidnapped beautiful princesses long and wide, leader of the armies of evil dark čerts, and of their great wealth in the lands behind the Zakliata Hora, land of darkness and cold.

    {object=="love": 
    
    But what {name} thought of, while grandfather was telling the stories was the beautiful {gender==true:Mária}{gender==false: Jozef} whom {pronoun} loved dearly and with whom {pronoun} had spent many beautiful moments. Every morning, {gender==true:Mária}{gender==false: Jozef} would meet {gender} with an apple in the meadow, where they would spend time lost in dreams. But {name} was hesitant, because {pronoun} believed grandfather wouldn't agree to this marriage. And so lived and loved secretly day by day. But knew things will change soon.
    -else: 
    But what {name} thought of, while grandfather was telling the stories was the far away kingdoms and its riches and how one day {pronoun} will rule one. (with a stern, just hand, with a slight dose of tyranny, after all {pronoun} didn't really want to be remembered as one of those awful tyrannical despots.)
    }

Every evening grandfather would light up his big pipe by the firelight of the old stone furnace, and blowing off little clouds as only he knew talk about small vilas or fairies  who lived in the meadows, and would sunbathe over the mountain cliffs. Of Laktobrada, the dwarf, with his big long beard , who would pop into huts and if the host was having dinner, would thrash them up and eat off of the hosts belly.  Of old gods, now forgotten by time, who inhibited dark caves and abandoned crossroads. Of vodnik  who kidnapped women and dragged them deep in his lake, of Geľo Sebechlebský who would play tricks with dumb, greedy men. And {name} would stop eating {gender_possesive} bryndzove halusny, and listen to his stories with delight. And so forth, the stories went long into the night, until {name} wouldn't yawn and fall asleep on the big fuzzy rug by the cat, who also fascinated by grandfather's stories would meow, stretch and cozy purring with {name}.


->m17

==m17

And in these dreams {name} would dream of great and magical things, for {pronoun} knew that:

+   {pronoun} can accomplish them all<>
    --. No one, nor man, nor circumstance can prevent {gender} from doing what {pronoun} hoped of.
    ~M17 = 5
+   Apart for a few naysayers, {pronoun} could do almost everything<>
    --, For there is always a few clouded and murky people.
    ~M17 = 4
+   .{name} dreamed big dreams but also had big doubts<>
    -- . For everyone who said {pronoun} could do it, there came another who told {gender} to leave silly dreams and do something down to earth.
    ~M17 = 3
+   .{name} was reluctant[,] <>
    --for almost all people in the village said dreams are foolishness and that sheep need shearing and cows need milking. Only а very few of {gender_possesive} friends and grandfather truly believed.
    ~M17 = 2
+  .{name} was afraid <>
    --The village was small, and people including {gender_possesive} grandfather were realists. The obstacles great. Heroes come from rich families, from castles. {pronoun}, a little village child was not the one for whom they were meant for.
    ~M17 = 1
 -   
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- ->m20
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->m17

==m20

One day grandfather sent {name} to shear the sheep, for winter was coming, and cold winds began to blow over the mountain tops. {name} easily sheared all the sheep in a heartbeat, and packed all the wool to sell it down to the market, stopping just to spit down the cliff. Back in the hut, {name} found grandfather with other elders of their village.

"Now" said the grandfather. "I want you to head straight to the market and not dawdle. You will pick up the wool from other gentlemen here and help them as well. None of that funny business, and no taverns, or fancy clothes either. Here is my valaška in case you find wolves along the way."

    Our {name}  listened and nodded because {pronoun} believed that :
    
+   People should never be afraid to contradict elders.
    --In {name}'s village, everyone had a voice and could contradict the superiors when they believed they were doing wrong.
    ~M20 = 1
+   People were mostly NOT afraid to contradict elders.
    --Still they would think well before speaking. Rulers could not be questioned over every little trinket.
    ~M20 = 2
+   People were somewhat afraid to contradict elders.
    --The power of the superiors was well recognized, yet people below still had somewhat influence and sometime they would dare to use them.
    ~M20 = 3
+   People were mostly afraid to contradict elders.
    --Still if one saw some colossal mistake on behalf of the elders, one would raise their voice. But these occurrences were rare.
    ~M20 = 4
+  People were very afraid to contradict elders.
    --There was a strict order in which everyone knew their place. Rulers were there to rule, and god forbid if every man or woman doubted their orders.
    ~M20 = 5
    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- ->intermezzo
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->m20

==intermezzo==

    {M20<3: 
    As {name} believed that {pronoun} should express {gender_possesive} opinion, {pronoun} spoke "But grandfather", said {name}. "I am young and want to see life. Shouldn't it be fair to spend a bit of the money, I've earned by shearing for my own good. It's only fair.
    
    Grandfather stroked his beard and mumbled. "Very well then. But not too much. And hurry back as the weather looks rough, and great snows are afoot."
    
    -else: 
    It seemed a bit unfair, but the elders were elders for a reason, and {name} could only hope to obtain their wisdom by the time {pronoun} was that old.
    }
    *[NEXT]
    ->Question5_001a

==Question5_001a
    
    
   -And as our {name} was walking down the narrow rocky road, looking up in the air if a great big eagle will scoop on {gender_possesive}, so {pronoun} can grab a new feather for {gender_possesive} hat,  digging {gender_possesive} valaška deep into the ground with each step, {name} <>         
    

    +decided to walk close to the ledge where {pronoun} certainly slips and dies and ends the fable.
    ->die1
    
    +walked on the normal road, close to the normal path to continue the story.
    
->Question5_001b
    
===die1

{No_of_death>1: You know, if you got this text means you went back and died again out of spite for me and for your nation. I will change your name to Snuggles at a random point in text if you keep on doing this!} 

~No_of_death = No_of_death+1
~gde_je_bio= "Question5_001a"
->All_deaths




==Question5_001b

//this is an ungrateful task as in the original question no gravity of either decision is being specified. People generally judge once give all the circumstances, and emulating that I have to make it as non specific as possible.


    As our {name} was finishing up with {gender_possesive} obligations in town, {pronoun} was approached by old {gender_possesive} friend from the village who was also in town.
    "My friend" he said. "It's so good to see you. I need your help, my carriage is broken on the road, and need help to take my bags. Please, will you help me."
    
    "You there." {name} heard a voice. "Are you from the village up the hill. I need you to take this order for all of {realm} to hear." Our {name} turned around to see a sharply dressed city official approaching {gender}.
    
    
    "But can't I stay a while to help a friend with his cart."
    
    "No. I need this delivered before you are cut off by the coming snow. Hurry now." continued the official.

    Now, {name} believed that 

+   Doing a service for a friend is VERY important.
    --When in conflict helping out a friend must take precedent over some imposed duty or agenda.
    ~M13 = 1
+   Doing a service for a friend is important.
    --Only if ones personal need is great, one should NOT help out a friend. Otherwise, one must help out a friend.
    ~M13 = 2
+   Doing a service for a friend should be balanced with personal agenda.
    --Depending on the occasion, one can take an extra effort to do service for a friend. And this is a special occasion. So the official can take it himself once the snow has cleared.
    ~M13 = 3
+   Doing a service for a friend is good, as long as it is not in great conflict with sense of duty or obligations.
    --One needs to adhere to duty and obligations, but some special times for special people one must to go out of owns way to help them.
    ~M13 = 4
+  Doing a service for a friend must make way for duty.
    --Doing a service to a friend should not be abused or take precedent over sense of duty.
    ~M13 = 5
    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- ->Question5_01_intro
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->Question5_001b
    
=Question5_01_intro
    {M13<4: 
    
    "I'm sorry" said {name}, but I wasn't leaving to the village till tomorrow. I was going with my friend here on his cart, so you see we need to fix it."

    Grumbling, the official left. 
    
    With a giggle, {name} and {gender_possesive} friend got to work and cleared out the cart in no time.
    
    "Don't worry about me. I will leave the cart with a blacksmith and head onward. Take heed when going back, if you meet the dwarf Maptinko Klingač along the way,  don't listen to what he says and more over don't trust him.
    
    And with those words of wisdom our hero headed back. But {pronoun} lost a lot of time and was late and the snow was creeping in.
    
    -else: 
    Sense of duty and obligation was paramount, and friend knew that.
    
    "No, go, go. Don't worry about me. I wasn't going to leave soon anyhow. Don't get trapped in the snow."
    
    And feeling assured {pronoun} was doing the right thing, {name} left the market heading back in the hills.
    }

*The Hills grew bigger with each step.
->Question5_01
==Question5_01==
    {M13>3: 
   
The wind was picking up, not as strong as it would have been in a few hours if {name} had stayed to help. There was still daylight, and cold was just beginning to prickle.
    
Suddenly, on a high rock, in the middle of the road, {name} spotted a flickering light and, to {gender_possesive} surprise noticed a mischievous looking dwarf smoking a pipe. And by the small light, {name} recognized him from grandfather’s stories, for it was Maptinko Klingač, the deceiver.
    
So, ignoring him, {name} rushed past the rock and headed off down the path.

But circling again around the narrow mountain path, {name} ended up in the same place and again {name} saw the dwarf  on a rock looking {gender} with a wicked smile.

And again circling again around the narrow mountain path, again again and again {name} saw the dwarf on a rock looking {gender} with a wicked smile.

"So" said the dwarf. "Are you going to circle over and over till some mountain strašidlo finds you and eats you?"

"It would seem I'm lost, friend dwarf."

"Indeed you are, friend. And I will be happy to help you, but for a price. I will tell you the way, but you will need to remember my name. And when I ask you again for it, you will have to remember it."

"Then I shall do so" said the hero, remembering the name well.

"Good, then head on up this path now, and trough a little cave. In it you will find a wonderful castle with all kinds of hearts delights. And behind each doors you will find more wonderful things to see. Once you find a ruby of the eternal door, take it and you will find the way home." and Maptinko Klingač showed {gender} the path.

    -else: 
   
The wind was strong and the snow was falling hard, and by the time {name} helped {gender_possesive} friend take the goods to the market in the city and was back on the narrow road, it closed behind and ahead of {gender}. Cursing the ice storm, {name} rushed to find shelter but found only cold cut of ice.

Suddenly, on a high rock, in the middle of the road, {name} spotted a flickering light and, to {gender_possesive} surprise noticed a mischievous looking dwarf smoking a pipe. And by the small light, {name} recognized him from his friend's warning, for it was Maptinko Klingač, the deceiver.

"Good Sir Maptinko Klingač." said {name}. "Know you any place to hide from this god awful weather?"
"Na." said dwarf happy to have heard his name known. "I would have tricked you and sent you down the cliff, but since you are a good child I shall tell you. Head on up this path now, and trough a little cave. In it you will find a wonderful castle with all kinds of hearts delights. And behind each doors you will find more wonderful things to see. Go now before you freeze."

And with a happy nod, our hero headed off in that direction.
    }

*Up the path...
-...was a cave, and in that cave was a castle, and in that castle were many colorful doors. {name} opened the first one only to find a room filled with bread and ham. Behind second were most succulent fruits. But behind third...

+   And {name} decided to open all the doors and enjoy all the delights<>
    --And behind one was a table filled with silver, another one filled with gold, another with gems. One housed magical singing birds of all sizes. And more, so much more...
    ~M14 = 5
+   And {name} decided to open most of the doors and enjoy, but with small caution
    --.{name} And behind one was a table filled with silver, another one filled with gold, third one might have had gems, or not, but {name} dared not open. But the third held a most magical zoo.
    
    ~M14 = 4
+   Open half of the doors and leave half for safety<>
    --For who knows who lives here. Maybe giants (albeit in a tiny cave castle, not really likely, no?). Still, such succulent food, such rich delights...
    ~M14 = 3
+   Opened a few doors<>
    --Well, a good meal or two, and maybe a few coppers aren't wasteful. Besides, noone lives here, no?
    ~M14 = 2
+  Opened no more doors
    --{M13<4: For {name} entered here just to get warm, and as soon as the storm stops, {pronoun} will be on {gender_possesive} way.}{M13>3:For {name} was just looking for a way home and nothing more than that. He will indulge in no such bacchanalia}
    ~M14 = 1
    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- ->intermezzo1
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->Question5_01

==intermezzo1==
    {M14>2:
    Suddenly, opening one of the doors, {name} was hit back as a form of dark energy swooshed so quickly by {gender} and out of the cave, before {pronoun} could see. immediately after the castle began to shake and crumble, and {name} rushed out of it. When {pronoun} looked back there was no more of the castle.
    
    
    -else: 
    
    Walking around the castle {name} found the most beautiful ruby {M13>3: that might have been the one {pronoun} was looking for to get back. And besides that it was an object} {object=="love": worthy of {gender_possesive} love, {gender==true:Mária}{gender==false: Jozef} who would no doubt shower our hero with kisses, praise and adoration}{object=="kingdom": worthy of a ruler. My how well it would sit on the crown {name} wanted to forge}. Should {name} take it?
 
 ->yes_no_takeruby
 }
 ->Question5_1
 ==yes_no_takeruby==
 
 *  [Yes]
 ->yes_yes_takeruby

*   [No]
    ->no_no_takeruby
    

==yes_yes_takeruby==
    -Suddenly, there was a thunder and a powering voice thundered throughout the hall. "Who dares sit in my castle." 
    "Oh sir, it is I, {name}" I am sorry, but the roads were frozen and I had no way. I hadn't taken anything of yours and had I known, I wouldn't have been so imprudent."
    "Silence!." Yelled the voice."As you have taken something of mine, so I shall take something of yours. Now leave!"
    Immediately after the castle began to shake and crumble, and {name} rushed out of it.
    *[Next]
->Question5_1
==no_no_takeruby==
    -Walking further down the halls, {name} saw a beautiful mirror, and in this mirror {pronoun} saw a land barren and devoid of life. It was a land covered in ice, like the great land of Zakliata Hora that his grandfather told him about. In this land there was a huge castle of stone, and while {name} watched a dark energy swooped out of the castle and flew with amazing speed. Next image was, as {name} saw in horror {gender_possesive} village, as the energy swooped over it. Horrified, our hero rushed out, as the castle crumbled behind {gender}.
    *[Next]
->Question5_1

==Question5_1
*[Next]
-When {pronoun} returned to {gender_possesive} village,  <> { object=="kingdom": 

       saw only ruins. Rushing home {pronoun} saw {gender_possesive} grandfather emerging from the rubble.  “What happened?” {name} asked. 
       
       “A terrible force came along and with a swipe of a wind took half of the village with it.

“No”, cried the hero, rushing from house to house. 

"This is my fault."

-else:
         saw only ruins. Rushing home {pronoun} saw {gender_possesive} grandfather emerging from the rubble.  “What happened?” {name} asked. “A terrible force came along and with a swipe of a wind took half of the village with it. “Oh, my love.” Cried our hero and rushed to {gender_possesive} lover’s home.
    }

*[Next]
    {object=="love": 
    
    {name} stridden towards {gender_possesive} love's house (which fortunately was still there), who as {pronoun} approached, when into the yard to greet {gender}.
    
    "What happened, love." asked {gender==true:Mária}{gender==false:Jozef}. But as {name} was about to fall into {gender_possesive} love's arms, a cold wind started to blow, and a Dark Force swooped from the skies grabbing {gender==true:Mária}{gender==false:Jozef} and flying away, leaving {name} in shock and fear.
    }

->Question5_2

==Question5_2

{name} wandered the night, <>

{object=="love": 

    <> worried about {gender_possesive} love's fate, looking at the skies for signs of the Dark Force.

-else: 
    <> scuffing and puffing, angry at the Dark Force, thinking how {pronoun} will return once with {gender_possesive} royal guard when {pronoun} becomes the ruler of the {realm}.
}
Towards the middle of night {pronoun} saw a light coming from afar. At the end of the light stood a huge tower, at the bottom a small hut with an old man.
"Come in child, shelter yourself from the cold night. Rest tonight, but in the morning you shall help me with a favor I need of your youth." Tired and exhausted {name} fell asleep and dreamt of <>
{object=="kingdom":
        a royal crown and great kingdoms that will be {gender_possesive}.
    - else:
        warm arms of loving {gender==true:Mária}{gender==false:Jozef}, embracing {gender} in the cold night.
    }
*[Next]
~game_progress = game_progress + 3
-In the morning, {name} awoke, to find {gender}self in the bottom of a huge tower as tall as any mountain {pronoun} had ever seen. 
"Now my child, I was a young man, when I was entrusted to be the watcher of the tower and guard our {realm}. Last I climbed the tower, I my beard was to my belt, and by the time I climbed back I was an old man that you see me." said the old man. "I cannot climb the tower, but I must see what is that darkness in the distance gathering. You must climb it for me, and return with the news."

-And with that the old man, gave {name} food for 77 days to carry on {gender_possesive} back and water for 77 days to drink.

-For 3 days {name} climbed the staircase, sweating and panting, until at last {pronoun} didn't drop the food and water, and then in a heartbeat climbed on the top of the tower. There {pronoun} looked at the distance. 

->Question6

==Question6

Now {name} was
+   Always hesitant and tense person
    --For life in the mountains was harsh and hard, and one had always to be ready.
    ~M15 = 1
+   Generally, hesitant and tense person
    --For life in the mountains was harsh and hard, but one needed to find moments of carelessness.
    ~M15 = 2
+   Both careless and tense interchangeably.
    --There were days of song and vine, and there were days of dark clouds and uncertainty. One had to sail them both.
    ~M15 = 3
+   Generally without great worries and upbeat
    --There were a few moments of hardship and stress, but overall {name} was not as up strung.
    ~M15 = 4
+  Always without great worries and upbeat person. 
    --Without a care on his back, {name} believed that all the world's troubles can be resolved with a laugh.
    ~M15 = 5
    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 1
    -- ->Question6_1
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->Question6


==Question6_1

But the darkness {name} saw, brought chill like one never felt in {gender_possesive} life, and weakness in the knees and {pronoun} flew back down the steps. Such was the need whipping at his feet, that {pronoun} was there in a heartbeat.

-When {pronoun} told the old man what {pronoun} saw, he shook his beard and blew on a large horn three times. By dusk, elders and surviving people of the surrounding villages came to the tower. Among the last, {name}’s grandfather walked in the room.
"Come, we must gather and see what is to be done.”

->Chapter2

==Chapter2
*[NEXT]
CHAPTER II

->Question2Q1

==Question2Q1

As all the elders gathered in a long wooden hut, {name} sat in the corner quietly. For long and hard they discussed and talked about what the Dark Forces of which {name} spoke, could be, till finally an old man, older than any, with hair like barnacle and long crooked nails stood up and said: "I know of the evil you speak of, but I had only once saw it when I was just a little boy. It was (choose the system you believe to be most powerful):

+   A Flock of Dragons of all shapes and sizes and colors
    --A horde of dragons, acting as one, listening to each other. Generally solitary creatures, but once joined in a horde, they fly as one destroying all in their wake. Amongst them the strongest and most feared was Drak with seven heads.
    ~M7 = 1
    ~opposer=" Drak with seven heads"
+   A Group of big and small Dragons of all colors
    --devouring flocks and people alike. They consult each other, but little ones are listened, but looked with scorn and brushed off aside, if rarely their advice taken. Amongst them the strongest and most feared was Drak with seven heads.
    ~opposer=" Drak with seven heads"
    ~M7 = 2
+   Armies of the Veterný kráľ and his evil council of čerts
    --A council of most ruthless čerts, and the Veterný kráľ, first amongst them, bringing destruction and cries wherever they march. All others must keep quiet.
    ~opposer="Veterný kráľ"
    ~M7 = 3
+   The mighty army of the maleficent Veterný kráľ, an evil autocrat.
    --Only but a few of his black horned demons can talk to Veterný kráľ, for anyone else who dares to speak up, is turned to ashes by his mighty hands.
    ~opposer="Veterný kráľ"
    ~M7 = 4
+  The great army of the evil Veterný kráľ. A ruthless absolute tyrant <>
    --whom all who serve need to obey without a word, for he deals with any voice of critique or advice with harsh imprudence. Just like slaves, all those living in his lands must adhere to his will less he turns them to stone.
    ~opposer="Veterný kráľ"
    ~M7 = 5
    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- ->Question2Q2
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->Question2Q1


==Question2Q2

The people clamored. The evil of the {opposer} was well known and feared. Most men of the {realm}, our hero’s friends and villagers, people {pronoun} knew were:

+   Brave men, looking for adventure for personal glory
    --Men who emphasized competition, achievement and success, with success being defined by the winner.
    ~M5 = 5
+   Brave men, yet also fathers and sons
    --The call of adventure being strong, but not forgetting that little voice of telling them of home they need to protect.
    ~M5 = 4
+   Ordinary men, looking for glory, but with same passion to protect loved ones
    --The balance of the adventuring spirit and community being the same.
    ~M5 = 3
+   Family men, who reluctantly took arms.
    --But would be willing to defend their friends and families and save their little pieces of heaven.
    ~M5 = 2
+  Good men who lived happily lives unwilling for great adventures.
    --Pleasant and warm people, who believed in warm and cozy feeling in the community, caring for others and quality of life much more than selfish exploits and mindless competition, achievements and success.
    ~M5 = 1
    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- ->Question2Q3
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->Question2Q2

==Question2Q3

Yet the old man spoke again. "My brothers and sisters, I am an old man, and lived a lot, but I believe there is no mortal creature that can tell us how to stop this coming evil. I suggest we send out the hero who warned us of the danger to the great lands behind the hills, in the ruins of old temples, where live the twelve great wise men, who know all and see everything.

As all the men looked at {name}, {pronoun} stood up and said with a sure voice: “Thank you elder, I shall do this great quest", while thinking it's because

+   I will do this for myself first and foremost, saving the land form the evil beasts is sure to make me happy and fulfilled.
    --And trough my actions, people will benefit, but only as a consequence of my adventure, and not the primary goal.
    ~M9 = 5
+   I need to keep myself in mind first of all, but spare a few thoughts for the people I am helping.
    --After all, if one doesn't take care of himself can one really count on the help of others.
    ~M9 = 4
+   This is a challenge both to me as a hero and to the people I will help with my actions.
    --Both in precarious balance, to save the villages and to realize my own dreams.
    ~M9 = 3
+   People will respect me and like me
    --And even though, a heroic act such as this is very beneficial to the people around me, there are a few perks that make it nice out of my own personal happiness.
    ~M9 = 2
+  I do this for the people, who are my primary motivator.
    --I will be respected by my family and friends. People need to rely on each other.
    ~M9 = 1
    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- ->Question2Q4
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->Question2Q3

//here is a good place to add sender branching

==Question2Q4

And after giving {gender_possesive} grandfather a hug, and shaking the hand of every villager, our hero was back on the quest.

    "Well, now you're in it." thought {name} as {pronoun} walked down the road. There {pronoun} was boot deep into an adventure entrusted upon {gender}, in a fight against the fabled {opposer}, with just a hint of finding {object}.
    
    As {pronoun} walked on, thoughts came to {gender_possesive} mind, and they were
    
    +All duty-bound thoughts
    --Thoughts of horrible challenges to come, and thoughts of what might happen if {pronoun} was to fail. He must always stay vigilant on this quest, for his duty commands it.
    ~M16 = 5
+   Mostly duty-bound thoughts 
    --There was a tingling thought of uncertainty and challenge, but it was just a beacon in the sea of worries. Still the duty was what pulled {gender} forward, with just a speckle of personal feel.
    ~M16 = 4
+   Neutral thoughts
    --Thoughts of the ancient shrine and both malicious and mystical oracle, known to both help and hinder travelers. Both nervous and anxious of meeting, as well as intrigued. Both duty and personal desire mixed.
    ~M16 = 3
+   Mostly positive thoughts
    --{pronoun} was certain of {gender_possesive} success, yet from time to time a thought of uncertainty sneaked upon {gender_possesive} mind. Still it was {gender_possesive} feel that drove {gender} forward.
    ~M16 = 2
+  All positive thoughts
    --{pronoun} knew that only success awaited based on personal feelings. That had been, and that will always be for heroes. {object} awaits.
    ~M16 = 1
    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- ->Question2Q5
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->Question2Q4
    
==Question2Q5
+[Next]
-The road winded up the mountain, till it reached a branching fork. On the fork there had been a sign, long broken. {name} stood there, lost, wondering where to go when {pronoun} heard rustling coming from the local trees. Suddenly a voice called out for help. {name} rushed only to find a huge river. Next to it, a group of ceremoniously dressed men, tying up a maiden, dressed in white to a big round wheel. The maiden looked as beautiful as any other our hero had seen, except for the big curly tail behind her that she waggled nervously. The wheel has been fastened so the poor creature rolled around like a sunflower in circles. Having made sure she is nice and tied, they packed up and left. All but one. 

The little maiden struggled a bit, but was unable to break the bonds, then seeing {name} from her high place, cried out. "Help me, please {name} as I know of what you seek and can help you."
 {name} stepped out and asked the priest what had happened. 
“You think you see a maiden, but in truth this is líška, a trickster and a deceiver. She had turned into a maiden to get away after pillaging chicken coops in our village, but we managed to catch her and tie her up here.”
"Oh, they torture me, and they will surely kill me, just because I had to eat. Surely, I don’t deserve a fate such as this.”

 "You lie spirit, I know it by your tail." said the priest. 
 
 The priest turned to the hero. "She tells you only half truths. Indeed, in this river lives a creature called Vodnik."
“He is most hideous and horrible and slimy.” Said the fox.
“Nay, he is beautiful, with golden barnacle filled hair”
“Barnacles are marine animals” said the fox.
“He uses them as braid accessories.” Said the priest.
 +[Ahem]
 
-“Oh yes”, continued the priest. “Anyway, he would snatch a woman for his underwater kingdom to rule with him, from time to time. And we were, in exchange for bountiful fish, required to do so. Without it, we would surely suffer.”
“I’m a fox.”
“Well, you are a maiden now.” Said the priest. “This is our custom for hundreds of years. And this evildoer for stealing our hens needs to be punished.”
 "Please, help me. And..and...I will help you again. My help is well worth breaking this awful tradition of sacrifice."
“You go to live like a queen.” Said the priest. “Without this, our river will dry and people will suffer.”
“Your bounty is based on sacrifice.” Said the fox.
"If we are not to obey our customs”, spoke the priest, "then we are nothing and will disperse into chaos."
Now, {name} took a deep breath and remembered {pronoun} lives in a time hundreds of years before any sign of emancipation, where maidens are locked in towers and worlds live on the prospect of arranged marriages. Brushing aside all concepts of the modern day, the hero decided:
+   Maintain time-honored traditions and norms of our {realm} came before anything else.
    --.{name} knew the customs well and the laws of the gods as {pronoun} had learned them long ago. He thanked the priest and moved on knowing that the best will come of it, as it always has.
    ~M19 = 1
    ~helper="bird"
+   It is good to  maintain time-honored traditions and norms, but with a little bit of pragmatism.
    --.{pronoun} asked the priest to have a bit mercy, and send of the fox with some reward for this deed. 
    ~M19 = 2
     ~helper="bird"
+   .{name} knew how every society has to maintain some links with its own past but also dealing with the challenges of the present and future.
    --For this he asked them to let Líška go.
     ~helper="fox"
    ~M19 = 3
+   Told the priest to let Líška go. Pragmatism comes before customs.
    --To which he grumblingly consented. 
    ~M19 = 4
    ~helper="fox"
+  Demanded sternly they let Líška go. 
    --If there was a chance of any help, {pronoun}  would have it, from any man or creature. To this priest grumblingly consented.
    ~M19 = 5
    ~helper="fox"
    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    --->whoisthehelper
    +[Hm, let me try that again] 
    --Let me try that again ->Question2Q5
    

==whoisthehelper

{ helper=="bird":
        Marching onward down the path, {name} finally saw the fabled arches leading to the land of twelve wise old men, now half in ruins, rising above the mountain lake. In it once great and lavish celebrations were once held, now but a home to Moras and Kikimoras and other lost souls (with an occasional volkodlak passing by). They said that this temple once lay at the entrance to the gates of heaven itself. Hero hoped to find the twelve wise men to ask for advice.
        ->helpergod
    - else:
        {name} followed Líška up the mountain path, now turned back to a fox, as the creature thanked {gender} and merrily hopped in its diminutive stature, wagging its curly  tail. In the end they stood in front of a cave in which Líška entered. "Come, {name}, I shall take you to the old witch, the Ježibaba, who will tell you of your quest.
        ->helperwolf
    }

==helpergod

When {pronoun} was a little child, {name} heard stories of the proper ceremonies given in this temple. It was the house of civilization long gone; men who lived here were here before any God our {name} knew of. As {pronoun} approached the ruins, {pronoun} noticed a tree leaning over the lake. As {name} went towards it, he saw twelve men sitting around the fire. From youngest to oldest. They had beards of different colors and lengths. First amongst them was but a boy, oldest had a beard to his knees. {name} knew who they were, for they were the twelve months, and one who held the stick to poke the fire, ruled over the season. Scorching fires of summer, or freezing winters were theirs to command. Now, the stick only belonged to the one whose month it was, but improper behavior or offering could incur their wrath, and then Sečeň (January) would cut you down with an ice wind that went to the bones.

"Come, {name}. Approach the shrine with your offering." – said a bigger, rugged man with ginger braided beard.

+   [{name} felt very nervous]
    --Months valued humility and rules of procedure. Thoughts of making a mistake in {gender_possesive} actions and upsetting the giant obsessed {gender_possesive} mind.
    ~M18 = 5
+   [{name} felt moderately nervous]
    -- Months valued humility and rules of procedure. Thoughts of making a mistake in {gender_possesive} actions and {gender_possesive} burning in hell obsessed {gender_possesive} mind. But they would have a little understanding if a few missteps were made.
    ~M18 = 4
+   [{name} felt ambiguous]
    --Both nervous and sure of actions, mixed up in a bowl that now rolled around in {name}'s tummy {pronoun} walked on. Both desire to be bold and to respect the procedure mixed within.
    ~M18 = 3
+   [{name} felt moderately confident]
    ---- Months valued strength and confidence. Even though there was a good risk of doing something improper, our hero didn't care. True, {name} heard of the old stories, but they were just a distant echo, a little nagging voice, before the challenge of the adventure that lay ahead.
    ~M18 = 2
+  [{name} felt very confident]
    -- Months valued strength and confidence. Even though there was a high risk of doing something improper, our hero didn't care. There was only the challenge of the adventure and nothing else.
    ~M18 = 1

-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- ->godhelper2
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->helpergod

==godhelper2

{ M18>2:
        As {name} approached the old men, nervously, it smiled and spoke in a reassuring voice.
        
        "Little mortal, I am Jun who holds the stick amongst my brothers. We control the weathers and the seasons. We make the apples bloom, and the fields die when their time comes. Little animals hide in their shelters to our wills, and men curse us with their frozen noses. If things were to happen on this earth we would know it. I see you know this well as you approach so softly with respect."
        
    - else:        
        "Little mortal, I am Jun who holds the stick amongst my brothers. We control the weathers and the seasons. We make the apples bloom, and the fields die when their time comes. Little animals hide in their shelters to our wills, and men curse us with their frozen noses. If things were to happen on this earth we would know it. I see you know this well as you approach so softly with respect. Only daring can have this knowledge , and I applaud yours in walking so boldly towards us."
    }

{object=="kingdom":
        "I seek to defend our {realm}, oh great wise men. The ruler had declared that one who defends the land from the {opposer} who threatens these lands shall inherit the {realm}, and I seek to claim it and defend its people from the evil forces."
        
    - else:
        Oh, wise men, I beseech you for your help. My love had been kidnapped by the evil {opposer}. I have traveled far and wide to seek knowledge how to save my loved from the evil fate.
    }

        "Very well, we shall tell you” said Jun. “I have seen your fate take you east to the kingdoms plagued by the evil {opposer} you speak of. You will fight lesser minions and in saving the kingdom, king will reward you with a sword that you will need to defeat the evil {opposer}.
        But be careful {name}, for this road is dangerous and full of temptations, and by the time you have finished it you might discover you are a different person than the one who embarked on the challenge.
        
        And with that Jun, stroked the fire, bringing upon {name} a storm that picked {gender} up and flew {gender} in to the far far lands of the east.
        
->Chapter31

==helperwolf

The cave was dark, and wet. And as Líška dragged {gender} further, {name} was wondering about what {pronoun} got {gender}self. Finally, Líška stopped and showed at a dark stone door in the far end of the cave. 

    "Move this stone, {name} and behind it you will find a little forest clearing. On that clearing there will be a hut with spikes around, with skulls on it. It will stand on chicken legs and run around. You must say 
“Hut of brown, please sit down”. If someone is to know what you ask of, it is her. But, as much as she is knowledgeable, she is also fond of human flesh. Sometimes even too much, so once she starts thinking of it, she can be fooled. Oh, be careful, {name}. I know I have promised you help, but I fear something awful might happen to you here." And with that warning, the Líška hopped away.


-So, {name} moved the stone and went into the clearing and indeed there was a narrow hut, surrounded with wooden spikes and heads on spikes, and it ran on chicken legs. And our hero spoke the words.

“Hut of brown, please sit down.” 

And as the hut stood down, a voice of an old woman came out from the cottage.

"Who is it that comes, my darlings. Could it be a tasty child mortal?"

"Come, {name}, approach me." said the voice.


+   [{name} felt very nervous]
    --Way to survive lay in humility and rules of procedure. Thoughts of making a mistake in {gender_possesive} actions and devoured by dark silhouettes and unspeakable horrors of this unknown situation obsessed {gender_possesive} mind.
    ~M18 = 5
+   [{name} felt moderately nervous]
    --Way to survive lay in humility and rules of procedure. But still, not to an extreme step. Some freedom to improvise is needed. Step by step, slowly he approached the hut, that held the owner of the hidden voice.
    ~M18 = 4
+   [{name} felt ambiguous]
    --Both nervous and sure of actions, mixed up in a bowl that now rolled around in {name}'s tummy {pronoun} walked on.
    ~M18 = 3
+   [{name} felt moderately confident]
    --Witches would be defeated trough independence, strength and confidence. Though, some rules needed to be obeyed. True, {name} heard of the old stories of Ježibaba (a witch which that was sometimes helpful, and sometimes devoured those lost in the corn) , but they were just a distant echo, before the challenge of the adventure that lied ahead.
    ~M18 = 2
+  [{name} felt very confident]
    --Witches would be defeated trough independence, strength and confidence. Even though there was a high risk of doing something improper, our hero didn't care. There was only the challenge of the adventure and nothing else. Witch be damned.
    ~M18 = 1

-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- ->helperwolf2
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->helperwolf



==helperwolf2

    { M18>2:
        As {name} approached the hut, {pronoun} passed a row of pikes with human skulls, all but one. 
        
        "Little {name}, I am Ježibaba, a witch. But not just any witch, I am the Queen of all witches and monsters. I see you know this well as you approach so softly with respect. But still, it has been a while since I tried a suckling young mortal. I will boil you and eat you. And then put your head on the spike in front of my hut."
        
    - else:
        As {name} approached the bird showing no fear, it spread its wings and spoke in the most beautiful voice {pronoun} had ever heard. 
        
        "Foolish little {name}, don't you know who I am. I am Ježibaba, a witch. But not just any witch, I am the Queen of all witches and monsters. For this brash and disrespectful behavior I will eat you, for it's been a while since I tried a suckling young mortal. I will boil you and eat you. And then put your head on the spike in front of my hut."
    }

    "Hold granny, for such is not fair. Answer me two questions at least before you eat me."
    
    "Fine then, ask your question."
    
    {object=="kingdom":
        "I seek to defend our {realm}, oh great witch. The ruler had declared that one who defends the land from the {opposer} who threatens these lands shall inherit the {realm}, and I seek to claim it and defend its people from the evil forces."
        
    - else:
        Oh, wise Ježibaba, I beseech you for your help. My love had been kidnapped by the evil {opposer}. I have traveled far and wide to seek knowledge how to save my loved from the evil fate.
    }

        "Very well, I shall tell you, not that it matters to you now. There are kingdom to the east plagued by the evil {opposer} you speak of. The king has with him a magic sword that can slay the evil {opposer}. But the lands are far and perilous and no mortal can reach them safely. For even if I didn't eat you, you would have surely perished."
        
        "Is there no way to get there."
        
        "Only one who had a magical horn such is mine, could blow in it and summon the birds of the east and north, who would then carry him to where he wants. But you have no such thing."
    
    +[NEXT]
    
    -"Now, I've answered your questions, come here little mortal so I may eat you."
    +[No way.]
    +[You have to catch me first.]
    +[Yeah, like that's gonna happen.]

    -But {name}'s legs had a will of its own and {pronoun} was dragged by a mythical force into the hut. Once inside the witch stood in front of a great stove.
    "Now, you will heat up the stove, sop this cauldron on it might heat up. And when this is done, I will cook you."
    
    -So, for an hour, {name} was fiddling with the fire and <>
    
    +doing a good job, heating it up. When one does a job, one needs to do it properly. If hero is gonna get eaten, {pronoun} will be the tastiest meal of them all.
    ->eaten
    +Just making it look, {pronoun} was really heating it.
    
    -"Blasted human, what is taking so long."
    
    "Oh, granny, I'm not sure I did this properly. Why don't you show me how it's done."
    
    "Fine, observe me."
    
    And when the witch leaned to put the fire in the stove, {name} <>
    *pushed
    --<> her into the stove.
    *kicked
    --<> her into the stove.
    *thrust
    --<> her into the stove.
    *propelled
    --<> her into the stove.
    
    
    
    -Once this deed was done, {name} took the magic horn, summoned the birds of the east and the north and flow into the far away kingdom.
->Chapter31
    
===eaten
~No_of_death = No_of_death+1
Really? You heated the stove so a witch might eat you? Not much of a preservation instinct on you? Oh well, I suppose you gotten eaten and bla bla, head on a spike, ashes over rye fields... Game over.


~gde_je_bio="helperwolf2"
->All_deaths


==Chapter31
*[NEXT]

CHAPTER III
~game_progress = game_progress + 3
-{name} landed in a kingdom amongst the plains, where the sight of {gender_possesive} mountains looked far far away. In this kingdom lived a king who was terrorized by <> 

    { opposer == "Veterný kráľ":
       A large dark devil with three horns on his head. They say he rode out from Zakliata hora, on a three headed horse. His skin bathed in the waters of iron, thickened by constant battle that no sword could harm nor no arrow pierce him. He was a Lieutenant of Veterný kráľ's Grand Army now set on this kingdom to pillage and loot. With him, an army of čerts.
        ~Chapter3_badguys = "Čerts"
        
    - else:
        A Three-Headed dragon with three heads of different color from the Great flock, who ate the livestock and villagers, terrorizing the countryside. Creatures broke off from the main horde now set on this kingdom to pillage and loot under the great wing of the Drak with seven heads.
        ~Chapter3_badguys = "dragons"
    }
    
    {name} heard tales from the frightened villagers, so {pronoun} decided to head towards the king’s castle and offer help so that {pronoun} might obtain the magic sword that the king possessed.
    
    ->Chapter3Q1
    
==Chapter3Q1    
    -But the road was long and {name} grew tired, so {pronoun} sat in the long shadow of a tree, pausing for the hour. While eating his provisions, an elderly man with long white hair on his back, and long grey beard all the way to his feet, dressed in rags approached him, begging for some food. {name} broke off half a bread and gave it to the old man.
    
    "Thank you, my boy. Thank you for your generosity. Phew, danger, danger, danger. Everywhere you look."
 Now the old man pulled a strange chess set with the carved figurines. "Nothing like a nice game after lunch.  Say, would you like to play a game with me."
    
    "I am in a rush, old man" said {name}
    
    "True, but one needs to find always a bit of a time for fun, no?" old man winked.
    
    +   [{name} agreed and played several games with the old man] <>
    --learning the rules and strategies. It was a fun few hours.
    ~M11 = 1
    +   [{name} agreed and played one game with the old man] <>
    --learning a few opening moves and strategies. IT was a fun hour.
    ~M11 = 2
    +   [{name} agreed and played a quick game with the old man] <>
    --playing just a quick game, enjoying fifteen minutes.
    ~M11 = 3
    +   [{name} shook {gender_possesive} head. "No, I should go."] <> 
    -- "Time is wasting, and I need to reach the capitol." And with that {name} started to rush further.
    ~M11 = 4
    +  [{name} shook {gender_possesive} head. "No, I MUST go."] <>
    -- {name} shook {gender_possesive} head. "No, I MUST go." And with that {name} started to rush further.
    ~M11 = 5
    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 1
    -- ->Chapter3Q1B
    +[Hm, let me try that again]
    --Ok, let's try it again.->Chapter3Q1

->END    

==Chapter3Q1B

 { M11 < 4:
        After finishing the game {name} was about to go, when old man stopped him and said. "Thank you for your generosity and time, young hero. Now let me return the kindness. Know, when you fight the {Chapter3_badguys}, know <> { Chapter3_badguys=="dragons": you must cut off all of its heads in a single swing, or else they will regrow three fold. } {Chapter3_badguys=="Čerts": you must cut off his horns  with a single swing, because in them hides his power.}
        And with that the old man disappeared.
        
    - else:
        The old man yelled something in the distance, but {name} being so in a rush didn't hear him.
    }

->Chapter3Q2

==Chapter3Q2

As {name} rushed down the road, {pronoun} saw a group of a few lesser {Chapter3_badguys} who were roughing up some peasants. Strangely enough they held a golden rope and to it was tied a tatoš with the beautiful golden mane, but with a gloomy face. As {name} was approaching them, three of the group of {Chapter3_badguys}  were bickering about what to do with the steed.

 { Chapter3_badguys == "Čerts":
        The bigger one of the Čerts, dressed in shiny oily leather with long black horns said. "Veterný kráľ ordered us to bring all peasants back to his Dark Keep on Zakliata Hora." 
        
        "No" said an smaller one with a silver chain dress, and a darting tongue. "This is not a peasant, it is a horse. It should be brought to three-horned čert."
        
        "No" said the even smaller one with a shiny golden circles on his braid. "This is obviously of no importance and of any use. I'm hungry. Let’s eat it."
        
    - else:
        The bigger green dragon said. "All peasants need to be taken back to the Drak with seven heads, back to his Dark Keep."
        
        "No", said a smaller dragon, as flames burst from his jaws. "This is not a peasant, it is a horse. It should be brought to the three-headed Dragon."
        
        "No" said the even smaller one with a shiny golden circles on his braid. "This is obviously of no importance and of any use. I'm hungry. Let’s eat it."
    }

    +[NEXT]
    
    -Our {name} observed the group hidden and decided to <>         //faux choice to distinguish if attention is paid
    
    +draw {gender_possesive} sword and charge at them, even though they are in full force, and just starting their argument.
    ->die2
    +Wisely waited a little more.
    
    And arguing became a fight, until all the {Chapter3_badguys} most lied dead killed by each other. {name} then drew {gender_possesive} sword and finished off the last ones standing.

->Chapter3Q2B
->Chapter31
    
===die2
~No_of_death = No_of_death+1
Yeah, well, it was a big group and you could have waited a bit. But you had to be careless...


~gde_je_bio= "Chapter3Q2"
->All_deaths


...
*[NEXT]
->Chapter3Q2

    
==Chapter3Q2B    

As {name} was cleaning the sword, {pronoun} thought

   +   Here is what you get when you have two lords. It is VERY bad thing to have  <>
    --One must never have two overlords.
    ~M23 = 1
    +   How bad it is to have two overlords <>
    --yet sometimes, but very rarely it is useful to have one more lord.
    ~M23 = 2
    +   No strong opinion either way. <>
    --Depends on the situation really, sometimes sharing power helps you handle things from different viewpoints, sometime it hinders you.
    ~M23 = 3
    +   Lords should share power with someone, because they can control the land better <> 
    -- Sometimes, it is not smart to do so, when the minions like this are stupid.
    ~M23 = 4
    +  Lords should always share power, so they might control more lands effectively <>
    -- And it works, provided minions are not stupid monsters such as this to bicker over unimportant matters. But without shared power, one can never improve one's realm enough.
    ~M23 = 5
    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- ->Chapter3Q2C
    +[Hm, let me try that again]
    --Ok, let's try it again.->Chapter3Q2B

==Chapter3Q2C

    -"Thank you, human." said tatoš, as {name} took of its rope. "I am no ordinary steed, but an spirit of the mountains, trapped here by these evil creatures. Here, take a hair from my mane. If you ever need of my help, just rub it between your fingers." said the creature and galloped in the air.
    
    "Thank you for saving us" said the peasants. "Kings castle lies a day's walk in that direction. But a bad time you chosen to visit our kingdom. The {Chapter3_badguys} are everywhere, and not only that, king's daughter a beauty of world renown is chosen to be sacrificed next to these vile creatures. Is said that almost all of king's guard is killed by the monsters trying to get her."
    
    "Thank you, peasants." said {name}. And with this information and pocketing the feather {pronoun} continued {gender_possesive} way.
    
->Chapter3Q3

==Chapter3Q3

    As {name} reached the great city, {pronoun} was brought before the king.
    
    
    "I have heard you defeated a group of these evil creatures." said the king. "I am desperately looking for champions to join my kings guard. Help me defeat these creatures, and for each you slay, I can and WILL give you gold, land, titles, servants, whatever your soul desires.
    
    +  "I would accept, only if there is a GREAT chance of advancement"
    --I will only do it if I can gain something out of it. If I can challenge myself and accomplish.
    ~M10 = 1
+   "I would accept, only if there is a GOOD chance of advancement"
    --I am looking for ways to challenge and prove myself, Your Highness. Yet I am not unaware of those that I help with my actions.
    ~M10 = 2
+   "I am intrigued, my lord. But I'm a looking for FAIR chance of advancement as well as helping others."
    --Both personal accomplishment and helping others drive me equally. I do things to prove and challenge myself, help others and find pleasure in those actions.
    ~M10 = 3
+   "My goals and benefit of those I protect come first, yet I would appreciate if I can get rewarded along the path for my services."
    -- Happiness and fair being of the people that comes out of my actions takes precedent, yet I year, like any other man for a footnote in the annals of history.
    ~M10 = 4
+  "I accept, and advancement is of no great importance to me, because I have my own agenda in the good of those around me."
    --For the happiness and fair being of the people that comes out of my actions takes precedent without alternative.
    ~M10 = 5
    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- ->Chapter3Q4
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->Chapter3Q3


==Chapter3Q4

    "Very well" said the king. "As you have no doubt heard, my daughter is a beauty of no parallel. I have hidden her in the highest tower of this castle. Slay the creatures that come to take her and I shall give her to you as wife, and with her, half of my kingdom.
    
     { pronoun=="She" && object=="kingdom":
        "But milord, I am a woman." {name} said. "I'm afraid such progressive ideas are couple of hundred years in the future. For now we are stuck to boy-girl relationship models.
        
        "Drats" said the king "blast this homophobic feudal systems."
        
        "I still would like half of the kingdom, though." said {name} as this is my dream.
        
        "Fine then, I shall make you a queen." said the king.
    }    
        {pronoun=="She" && object=="love":
        
        "But milord, I am a woman." {name} said. "I'm afraid such progressive ideas are couple of hundred years in the future. For now we are stuck to boy-girl relationship models.
        
        "Drats" said the king "blast this homophobic feudal systems."
        
        "And besides, I already love someone, and couldn't marry for kingdom as this is not my dream."
        
        "Fine then, I shall grant you something to help you on your quest." said the king.
    }
    {pronoun=="He" && object=="love":
    
        "I shall help you with your daughter, but I'm afraid I cannot marry her. I love another." said {name}.
        
         "Fine then, I shall grant you something to help you on your quest." said the king.
         }
    {pronoun=="He" && object=="kingdom": 
    
        "My lord, I would be happy to. Allow me to slay the {Chapter3_badguys} that dare steal her from you."
    }
->Chapter3Q4B

==Chapter3Q4B

    So, armed with a sword, and together with other king's guard, {name} stood under the tallest tower of the castle waiting for the creatures. And {night one| night two| night three|->Chapter3Q4C} a huge gathering of monsters came.
    
    +[{name} slashed the monsters with {gender_possesive} sword.]
    
    And by morning, {Chapter3_badguys} lied down in throng beneath their feet. But yet again { Chapter3_badguys=="dragons": three-headed Dragon was not there. } {Chapter3_badguys=="Čerts": Three-horned Čert was not there.}
    
->Chapter3Q4B

==Chapter3Q4C
<> night four, a huge gathering of monsters came. 
->Chapter3Q4C1
==Chapter3Q4C1

And {name} thought as {pronoun} drew {gender_possesive} sword.

+  "Persistence is the only sure way to success."
    ~M22 = 1
+   "Persistence is the way to success, but one needs to look for alternatives when possible"
    --2
    ~M22 = 2
+   "Persistence adds to success, but so does improvisation."
    --3
    ~M22 = 3
+   "Persistence is a laudable notion, but one always needs to improvise and change one's approach."
    --4
    ~M22 = 4
+  "Persistence is equivalent to stupidity. One needs to drop it as soon as one thinks or feels there are no results."
    --5
    ~M22 = 5
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- ->Chapter3Q4D
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->Chapter3Q4C1





==Chapter3Q4D

{ M22>2:
        And with that thought in mind, {name} ran into the crowds of {Chapter3_badguys} following the trail from where they came.
        
        Slashing trough the monster hordes, {pronoun} reached a small clearing by the lake where { Chapter3_badguys=="dragons": Three-headed Dragon} {Chapter3_badguys=="Čerts": Three Horned Čert} of the {opposer}'s army was. 
-else: 
        And with that {name} held {gender_possesive} stood {gender_possesive} ground, until finally { Chapter3_badguys=="dragons": Three-Headed Dragon} {Chapter3_badguys=="Čerts": Three Horned Čert}
of the {opposer}'s army came before {gender}.
    }

->Chapter3Q5

==Chapter3Q5

 "Roar."  Said the creatures. "So you are the one who keeps me away from the princess. By Gods, I shall { Chapter3_badguys=="dragons": eat you where you stand} {Chapter3_badguys=="Čerts":crush your bones between my hands, you peasant. I had killed numerous princes before you.}."
 
    But {name} was not easy to frighten. {pronoun} grabbed the sword and struck the creature.
    
    {M11 < 4: 
        Remembering the words of the old man, {name} sliced all of the <> 
            {Chapter3_badguys=="dragons": heads in a single swing} {Chapter3_badguys=="Čerts": Three Horned Čert’s beard with a single swing.}
        ->Chapter3Q5feast
    -else:
        {name} hacked and slashed, but however times {pronoun} might have hit the lieutenant, <>
            {Chapter3_badguys=="dragons": its hide was as tough as leather and heads kept on regrowing} {Chapter3_badguys=="Čerts": his body took no blows, for his skin was sturdy and iron.}
        ->Chapter3Q5Chase
    }
    
==Chapter3Q5Chase

"Surrender mortal" said the creature, laughing. "You cannot defeat me." 

And just as desperation started to set in, the old man, whom {name} once feed by the road, huffing and puffing, appeared. 

"Damn. I wanted to tell you, but you ran away too quickly." said old man. " {Chapter3_badguys=="dragons": You must chop off all heads in a single swing. Otherwise they will keep on regrowing. "} {Chapter3_badguys=="Čerts": You must cut the horns with a single swing. This is where his power lies."}

    Hearing the weakness exposed, the lieutenant ran, over the fields and into the lake that parted before him  and {name} gave chase thinking if only {pronoun} knew this sooner.
    
->Chapter3Q5ChaseB

==Chapter3Q5ChaseB
    
    {name} ran down the steps into the belly of the lake only to find a peculiar sight. You see {name} was a person of
    
+  Great desires <>
    --And the lake floor was covered with gems, jewels, gold coffins, powerful horses and sharp swords.
    ~M12 = 5
+  Big desires <>
    --And there was gold as much as one can imagine covering the lake floor.
    ~M12 = 4
+   Good desires and equal restraint <>
    --And there was a substantial wealth spread across.
    ~M12 = 3
+   Moderate desires practicing good restraint <>
    --And there was a chest of gold before {gender}.
    ~M12 = 2
+  Few desires practicing strong restraint <>
    --But a few golden pieces and gems before {gender}.
    ~M12 = 1
    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- ->Chapter3Q5ChaseC
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->Chapter3Q5ChaseB
    
==Chapter3Q5ChaseC


{M12>3 :

    "Take this wealth and let me live." said the evildoer. "I will give it all to you."
    
    But {name} had no mercy for him for {pronoun} know what misdeeds were done and horrors he will do if let go, so with a single slash vanquished him.
-else:
    "Impossible, no such mortal man is so devoid of temptation." said the evildoer. And {name} saw this for what it is, an illusion meant to trick {gender}. So with a single slash {pronoun} had vanquished him.
     } 
    
    And with the beasts gone, hero returned to the king who had thrown a great party and given the hero plenty of gold and jewels.
->Chapter3Q5feastB
 
==Chapter3Q5feast

    Upon the slaying of the beast a great danger was taken away from the kingdom. And king brought all kinds of gold and jewels before {name} and organized a great feast. Still, you see {name} was a hero of  

+  Great desires <>
    --And took gems, jewels, gold coffins, powerful horses and sharp swords. Ate the tastiest food and wine. Laughed, and married for several days, even though {pronoun} didn't need it all.
    ~M12 = 5
+  Big desires <>
    --And took gold as much as one can imagine and ate and drank and celebrated for a day.
    ~M12 = 4
+   Good desires and equal restraint <>
    --And took a substantial wealth. To be carried to his home and enjoy. And celebrated as much as the next man, knowing the call of the adventure had not yet ceased.
    ~M12 = 3
+   Moderate desires practicing good restraint <>
    -- Because the quest had not been finished, and there was no time to waste in indulgence. So, {pronoun} took and took just a chest of gold before {gender}.
    ~M12 = 2
+  Few desires practicing strong restraint <>
    --Because the quest had not been finished, and there was no time to waste in indulgence. So, {pronoun} took but a few golden pieces and gems before {gender} that {pronoun} needed for the quest, even though {pronoun} might need more for {gender_possesive} quest.
    ~M12 = 1
    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- ->Chapter3Q5feastB
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->Chapter3Q5feast

==Chapter3Q5feastB

{M12>3 :

   "Milord I thank you for these gifts and the feast." said {name} but there is still great danger over the land while the evil {opposer} lives. I must take the magic sword and leave you.
-else:
    "Milord I thank you for these gifts, but I have no needs for so many trinkets. And remember, there is still great danger over the land while the evil {opposer} lives. Give me the magic sword and I must leave you.
    } 

     { pronoun=="She" && object=="kingdom":
        "But my valiant heroine, I still must give you the half of kingdom as promised. And though you cannot marry my daughter, I hope one day in the future you can rule as friends and co-queens. In the mean time I will see to find you a prince. " and the king gave her a wink.
  
        "I thank you, milord, and as soon as I have liberated my {realm} from the evils I shall return to be crowned."
        
    }    
        {pronoun=="She" && object=="love":
        
        "My valiant heroine, I know you refused the crown, and I wish you best luck in finding your man. You are always welcome in my kingdom, and have a place at my table for food." 
        
        "I thank you, milord, and as soon as I have liberated my {realm} from the evils and found my love I shall return to celebrate with you."
    }
    {pronoun=="He" && object=="love":
    
        "My valiant hero" said the king. "It is a pity you love another, for my daughter would have been a great wife for you and Queen to your kingdom. As such I will give you the magic sword. You are always welcome in my kingdom, and have a place at my table for food." 
        
           "I thank you, milord, and as soon as I have liberated my {realm} from the evils and found my love I shall return to celebrate with you."
         }
    {pronoun=="He" && object=="kingdom": 
    
        "And as I have promised, you will marry my daughter and receive a half of this kingdom to rule. Yet this celebration needs to wait, as both your {realm} and my kingdom are still in danger from the great {opposer}. You must go now and once you have defeated him, return so that we can make a feast - and what a feast it will be. For seven days we shall eat and drink."
        
        "Thank you, milord. It was my desire since I was a little child on the slopes of my village. To be a ruler of my own realm. "
    }
    
->Chapter3Q6

==Chapter3Q6
    -The king brought the magic sword before {name}, however when {name} tried to unsheathe it, it wouldn't budge. Suppressed, hero asked the king why won't it unsheathe.
    
    "To tell you the truth. I don't know. It has always been like that. You must find a way to do it yourself."
    
 +   [{name} was angry. A good king MUST have answers about such important questions]
    --How can one rule the land without having answers to questions subordinates raise about their work
    ~M21 = 5
+   [{name} was disappointed. One needs to have these answers if one is a good ruler]
    --Well, still not every single one of them, but important ones for sure.
    ~M21 = 4
+   [{name} expected the king to have the answer, but was ready to look for it {gender}self]
    --Honestly one cannot expect the ruler to have every single answer to every question.
    ~M21 = 3
+   [{name} expected the king to have an answer to such important questions]
    --Generally people can go about knowing what to do themselves, but for something as epochal as this, the ruler should have an answer.
    ~M21 = 2
+  [{name} smiled. He will find the answer {gender}self]
    --Rulers might know or not know answers, it is not of such importance. This is {name}'s job and {pronoun} will do it {gender}self.
    ~M21 = 1
    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- ->Chapter4
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->Chapter3Q6
    
    
 ==Chapter4   
 And with the sword, the king gave {name} the best horse in the kingdom, and sent {gender} on {gender_possesive} way to the north in the lands behind the mountain, where the Zakliata hora lay, in a land covered by cold and mist and darkness that {opposer} brought.
 
 +[NEXT]
 
 -CHAPTER 4
 
 -As {name} was riding down the road, {pronoun} heard a familiar voice.
 
    "Hello, { pronoun=="He" && object=="kingdom": prince}{ pronoun=="She" && object=="kingdom": princess}  {name}. {object=="kingdom": I've heard that you now rule the land.} You have showed up just in time."
    
    {helper=="fox":
    
        It was the little Líška, {name} saved from the priests, sitting on a rock, looking at the road. 
        
        "I need of your help."
        
        "I am in great rush now, friend Líška. I need to defeat the evil {opposer} before he has taken over all land. Surely, this task is not that difficult?"
        
        "No, such is not the case, my powers are weak ever since my capture. Please friend come with me."
        ->Chapter4Q2
    }
    {helper=="bird":
    
    It was the dwarf Maptinko Klingač. He sat on a low branch of an ash tree, swinging 
    its leg in the air, letting of huge puffs of smoke from his little pipe.
    
    {Chapter3_badguys == "Čerts":
    
    "Ah, friend dwarf. How convenient, I find you in this land of the dwarves who intend to rule all the lands." 
    
    "Worry not. I am not one of them, even though my heart is set on little mischief, even I know when things are not to be trifled with."
    
    The dwarf continued, <>
    }

    "Now you remember our deal, don't you. Guess my name or I take your soul."
    }
    
    -What is my name:
    
    +[Maptinko Klingač]
    "Pft, you were lucky." he said and ran off. 
    ->Chapter4Q2
    
    +[Lilipatuljak]
    -->die3
  +[Krivoslav]
Krivoslav?!? For real?     
-->die3

    

==die3==
~No_of_death=No_of_death+1

Really. It was there like 50 times?!? What should had it been there to guess right? Miroslav Žbirka? Guess it was just too hard. Oh, now you are messing with me aren’t you? Because I see no other reason for you to do this to me. Ok, now I kill you for good. You are dead.

Game Over


~gde_je_bio= "Chapter4"
->All_deaths


+Oh no

-Yeah, should have thought about this when you were trying to be funny, no. I stay with my decision.

Game Over.

+But please

-Nope. Game over, man. Game Over.

+Please, I promise to take it seriously and not sabotage the research anymore. And try to be serious and all and swear it, so may Miroslav take my soul if I don't.

-You mean, Maptinko Klingač?

+Yes, Mart..Mapl..Marja..Yes that guy

-Ok, fine. But I mean it this time!

Ahem, where were we...

->Chapter4



==Chapter4Q2
*[Next]
    {M13<4 && helper=="fox":
        
        Remembering that our {name} helped out {gender_possesive} friend in the market at the beginning of our story, {pronoun} decided on helping and listening to the little spirit.
        
        "Excellent. You will not regret this." said the {helper}.
        
        They went along the path till they reached the plains edges. Beyond it, the land became frost barren and broken. In the distance, one could see the glimpses of great black cliffs and a dark castle.
        
        "Here" said the {helper}. "Come out, Laktibrada. And meet the hero."
        
        Suddenly a dwarf with a beard three times his length jumped out in front of them.
        
        "Stay your sword, { pronoun=="He" && object=="kingdom": prince}{ pronoun=="She" && object=="kingdom": princess} {name}. I mean to help you. I am Laktibrada, a ruler of all lands of the mountains. Once a monarch of this land, now just a castaway. I used to beat up passersby, would be heroes, eat lunch off their belies and send them home. You think my beard is long. It was even longer before that evil {opposer} came along and chopped it up and cast me out laughing."
        
        "What brings you to this barren land?", Laktibrada continued.
    
        "I seek to vanquish the evil {opposer}."
    
        "By Gods, then I might get my mountains back."
    
        "See, I knew I could help". The Líška wagged its tail happily.
        
        "So how will you do it?"
        
        "Why, with this magic sword."
    
       "Interesting, and do you know how to unsheathe it?"
    
       {M13>3: With duty and determination?}
       {M13<4: Why, with love and compassion?}
    
        Laktibrada bleated with laughter.
    
      "Oh silly boy. I will tell you how, but before you do this. I need you to adhere to my instructions word by word."
        
        }
        {M13>3 && helper=="fox":
    
        Remembering that our {name} didn't help out {gender_possesive} friend at the beginning of our story, {pronoun} decided on moving on, duty bound towards the castle. 
        
        “I am sorry, friend spirit, but I need to move on as quickly as possible, and once I am done I will come back post haste to help you."
        
        The creature seemed a bit disappointed, but then wagged its tail, and barked.
        
        "Ok, you know what is best for you." and hopped away.
        
        The hero hurried down the path.
        
          Suddenly a dwarf with a beard three times his length jumped out in front of our hero.

        
        "Stay your sword, { pronoun=="He" && object=="kingdom": prince}{ pronoun=="She" && object=="kingdom": princess} {name}. I mean to help you. I am Laktibrada, a ruler of all lands of the mountains. Once a monarch of this land, now just a castaway. I used to beat up passersby, would be heroes, eat lunch off their belies and send them home. You think my beard is long. It was even longer before that evil {opposer} came along and chopped it up and cast me out laughing."
        
          "What brings you to this barren land?", Laktibrada continued.
    
        "I seek to vanquish the evil {opposer}."
    
      "By Gods, then I might get my mountains back."    
        
        "So how will you do it?"
        
        "Why, with this magic sword."
    
       "Interesting, and do you know how to unsheathe it?"
    
        {M13>3: With duty and determination?}
       {M13<4: Why, with love and compassion?}
    
        Laktibrada bleated with laughter.
    
      "Oh silly boy. I will tell you how, but before you do this. I need you to adhere to my instructions word by word. Remember – word by word."
        }
        {helper == "bird":
    
    Suddenly a voice called out to the hero.
    
    "Well, you were lucky for paying attention to these things, names of dwarves." {name} turned to see a bright fiery bird called Vták Ohnivák sitting on a branch, looking at the hero..
    
    "Now my little one, what brings you to this barren land?" continued Vták Ohnivák.
    
    "I seek to vanquish the evil {opposer}."
    
    "Ahh, and how exactly will you do this?"
    
    "With this magic sword of course."
    
    "Interesting, and do you know how to unsheathe it?"
    
    {M13>3: With duty and determination?}
    {M13<4: Why, with love and compassion?}
    
    Vták Ohnivák laughed. 
    
    "Oh silly boy. I will tell you how, but before you do this. I need you to adhere to my instructions word by word. Remember – word by word."
    
    }
->Chapter4Q2B
    
  

    
==Chapter4Q2B
+[Next]
    -There is a village here you see, here. And the people who live here live on the edges of the land of the dead. They are dead themselves, yet not quite. Each day, the bell keeper rings the town bell at the same time without a cheer, without a smile. The milk maiden goes down her established path carrying big jars of milk. The town fool tells all of its jokes in the same monotonous way he has since the beginning of the town. People chop down trees that they had cut the day before, walk in the same footsteps they had done since time memorial. Such is their way, and such is their custom.
    
     Now, you need to go to the town and get me a bucket from the city well. Only with its magic I can help you unsheathe the sword.
    
    Will you do it?
    
    
    +"I would seem I have no choice." said {name}
    ->Chapter4Q2C
    +Well, I do have a choice, but it ends with me ending my fable.
    ->Areyousure

==Areyousure

This will end the game. I'm not kidding. Are you sure.

    +[Wait, what?]
    -
    +I better start reading this text.
    ->Chapter4Q2B
    +Nah, I'm gonna emo out and quit.
    ->die4

===die4==
~No_of_death= No_of_death+1

-Well, then, you die. I don't know, a refrigerator falls on you. Or a train. From the skies. Interdimensional instability and all. 

Why you would choose to argue with the narrator instead of clicking on the little circle button on the top, is beyond me.



Game Over

~gde_je_bio= "Chapter4Q2B"
->All_deaths



+[NEXT]
->Chapter4Q2B
    
    
==Chapter4Q2C

    So our hero marched along the path, and indeed reached the twilight village where people walked like zombies with bland expressions on their faces, and across the village {pronoun} saw a well. So our hero decided to: 
    
    
+   Strictly adhere to the behavior of the village. 
    --Mimic it perfectly not to stir commotion. Moved with same faceless expression as others. 
    ~M24 = 1
+   Mostly adhere to the behavior of the village.
    --A slip up here and there (but not that important, no?). Mostly exactly as they behaved.
    ~M24 = 2
+   Playing along at adhering.
    --Not really flinging it, but not really committed to the rules.
    ~M24 = 3
+   Go {gender_possesive} own way.
    --If {name} noticed someone watching {gender}, {pronoun} would mimic the villagers, but otherwise wend {gender_possesive} own way.
    ~M24 = 4
+  Walk for the well directly.
    --If these people want to play a zombie village, that's their own thing. {name} will not be bound by such silly village norms.
    ~M24 = 5
    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- ->Chapter4Q2D
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->Chapter4Q2C    
    
    
    ==Chapter4Q2D
    
    "You have it?" said the creature upon {gender_possesive} return. "Good give it here"
    
    And  { helper=="fox": Laktibrada}{ helper=="bird": Vták Ohnivák} drank deeply from the bucket.
    
    "Ahhh, thank you. I have longed to drink from this well so long."
    
    "And now you can unsheathe the sword?" asked {name}.
    
    "Oh, sure. Here, just turn this picture like this, so that the carvings overlap, and now, turn the handle and read these words."
    
    The hero turned the sheets as the creature told {gender} and indeed there were words forming. 
    
    "Sword this is, a sword of wonders. Forged in suffer, tears, and sweat. Wondrous sword this is, a work of harmonious hands. When against tyrant man goes boldly, every sword is a sword of wonders."

    And with the thought, the sword came unsheathed.
    
    "Wait, you knew this all this time, and you just sent me to the village for the water, why?"
    
    "Oh, you know. For fun and giggles. And I was getting a bit thirsty."
    
    And with a mischievous laugh, { helper=="fox": Laktibrada disappeared in a little dark hole he came out of..}{ helper=="bird": Vták Ohnivák fly up high in the air, leaving a few feathers behind that burned the tree}.
    
    ->Chapter4Q2E

==Chapter4Q2E
+[Next]
-Marching across the ice misty land, {name} reached the great Gate of the {Chapter3_badguys}. It served as the outer ring of the Dark Keep, home of the fierce {opposer}. It was a monumental building, with carvings of the past, by generations and generations of {Chapter3_badguys == "dragons": dragons and wyrms}{Chapter3_badguys == "Čerts": metal and clay dwarves} had carved. It was an epochal structure significant to the whole monster kind.

    On the walls stood hundreds of {Chapter3_badguys} guarding the entrance to the monster lands.

   Now, hero, this is the Great Gate, behind it lies the Dark Keep and inside sits a golden throne and on this throne sits the {opposer}. Now we can try to get inside secretly without the {Chapter3_badguys} seeing us. But it will be perilous.

    {name} looked at the Gate that loomed ominously above them. 
    
    +[Suddenly {name} remembered the hair of mane from tatoš in {gender_possesive} pocket.] 
    
    -{pronoun} rubbed it between his fingers, and the steed appeared.

    "How may I help you, friend." asked the horse.
    
    "My friend." said {name} "Can you somehow.."
    
    
    
*[Sneak me in?]

    ->Chapter4Q3B
*[Collapse the gate?]
    -The horse nodded and disappeared, appearing only moments later with a heard of its kind. Together they stomped their hooves till the gate went down.
    

->Chapter4Q3C
    

==Chapter4Q3B


    The horse nodded and put the hero on top of it. With the hero holding tightly the mane, they headed on over the gate.
    
    Now since this is a risky move let us roll the die to see if you manage to avoid the {Chapter3_badguys}. A roll on a 1d6 die (1 to 6). And I will be a fair sport a roll of 1-4 means you make it. 5-6 means you are seen and probably dead.
    
        Ready?
        
+   [No!].
+   [No!].
+   [No!].
+   [God, No!].

        That's the spirit!

        And the roll is... {~1|2|3|4}. You make it. #I wasn't really going to kill the protagonist, but I needed a bit of a dramatic flair. After all they chose the risky option
        
    
->Chapter4Q3C

==Chapter4Q3C
+[Next]
-Having passed the gate, {name} entered the Dark Keep and fighting {gender_possesive} way reached the golden throne on which sat {opposer}.

"You little fool. You think you can defeat the great {opposer}. I will eat you whole."

And with those words the {opposer} jumped at the hero.

Oh what a wondrous fight, worthy of hiring an artist it was. Words...so many wonderful, eloquent, ardent, poignant, fervent words could be spoken to describe it. Trust me, it was majestic.

Pinning the little {name}, the {opposer} laughed.

"Silly man. How can you hope to defeat me, you are so puny."

{object=="love":

    "No" thought {name}. "To come so far and to be eaten by this creature. My dear love. What will happen to my dear {gender==true:Mária}{gender==false:Jozef}". And with that thought the sword began to radiate and glow.
}

{object=="kingdom":

    "No" thought {name}. "To come so far and to be eaten by this creature. All the people of the kingdom I rule. How can I be a ruler if I cannot protect them. I am bound by duty greater than my life. I must not fail." And with that thought the sword began to radiate and glow.
}

    Having learned the secret of the sword, the hero bravely struck at the {opposer}.
    {opposer =="Veterný kráľ":
        And with a mighty swing, {name} split the evil sorcerer king, out of whom jumped out a wolf. {name} slashed the wolf, out of whom jumped a fox, whom {name} also split. Out of the fox, jumped a rabbit, but {name} quickly caught it and killed it. Out of the rabbit flew a bird, whom {name} quickly shot. Out of the bird then dropped an egg that cracked on the floor, thus destroying evil one's soul. 
        
        With Veterný kráľ dead the hero opened the cells freeing the enslaved people, who thanked {gender} as they walked out.
    -else: 
        And with a mighty swing, {name} cut off all of the {opposer}'s heads, and before they could regrow, {pronoun} split the beast open. Out of the Dragon's stomach then started coming out people and people the beast had devoured, thanking {name} for their lives.
        }

{object=="love":

    And finally, out of the {opposer=="Veterný kráľ":'s dungeon}{opposer=="Drak with seven heads":'s belly}came out {gender==true:Mária}{gender==false:Jozef}, who ran in {name}'s arms, finally reunited with their love.
}
+[Next]
->Chapter4Q4

==Chapter4Q4
EPILOGUE
~game_progress = game_progress + 3

    Having defeated the {opposer}, {name} returned to the kingdom, where <>
    
   {object=="love":

    king offered {gender} the position as one of the top councilors to join him with his partner.
}

{object=="kingdom":

    {pronoun} assumed the position of the ruler of {gender_possesive} part of the kingdom.
    }

Being on this honorable and powerful position, {name} valued:

+   Greatly the security and stability the position brought.
    --integrating in to existing order of things and improving it to the best of the ability.
    ~M4 = 1
+   To a good extent the security and stability the position brought.
    --Yet daring to try something unorthodox and creative from time to time.
    ~M4 = 2
+   Valued both the adventure and the stability position brought
    --Neither more than the other. Power to change things and the system that it represented. 
    ~M4 = 3
+   To a good extent the adventure and power the position brought
    --Yet valuing certain perks of stability, that {pronoun} needed to be maintained.
    ~M4 = 4
+  Greatly the adventure and power the position brought
    --From the position of power, things would be changed to the better. Our hero was of exceptional talent and would, trough reforms make the land great.
    ~M4 = 5
    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 1
    -- ->Chapter4Q5
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->Chapter4Q4

==Chapter4Q5

-And in the years to come the adventures lived and the battles fought brought to our hero great fame which was 

+   Very important to the hero
    --It was a great feat {pronoun} had done. Recognition is most welcome
    
    ~M3 = 1
+   Important to the hero
    --Although not overly important it's good to be remembered as a person of good importance. 
    ~M3 = 2
+   Moderately important to the hero
    --Some recognition is nice, but to equal extent the help and happiness given to others.
    ~M3 = 3
+   Barely important to the hero.
    --Some small recognition is nice, but overall it's about the happiness of the people around {gender}
    ~M3 = 4
+  Not that important really. People's happiness is a reward by itself
    --The adventure was done for unselfish reasons. Recognition is just plain vanity.
    ~M3 = 5
    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- ->Chapter4Q6
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->Chapter4Q5

==Chapter4Q6

And as years marched on, {name} decided that with immediate danger gone, and world back into balance {pronoun} will 

+   Spend all of the time with family and friends, living a good life, {pronoun} had earned
    --With warm fires in your grand castle, telling stories to grandkids lying on a bear rug.
    
    ~M1 = 1
+   Spend most of the time with family and friends, living a nice and cozy life.
    --But at least one more story awaits.
    ~M1 = 2
+   Spend time on family and friends and adventuring equally.
    --Just a few more dragons, please. I will stop...
    ~M1 = 3
+   Spend most of the time in adventuring, but have a cozy family and friends always to go back to.
    --Yes, don't we all. And then we are divorced and {gender==true:she}{gender==false:he} gets to keep the kids, castle and half the peasants.
    ~M1 = 4
+  Adventure awaits. More challenges, coziness be damned!
    --yes I know it's a fun answer, but answer what you would do in hero's shoes. Click on this if you are serious.
    ~M1 = 5
    
-
    +[I am sure of my choice]
    ~game_progress = game_progress + 4
    -- ->Conclusion
    +[Hm, let me try that again] 
    -- Ok, let's try it again. ->Chapter4Q6
    
==All_deaths

{No_of_death==1: You die. No fun stuff here (although I would have really wanted to.) But this is a serious research, and we need to be serious. And there will be consequences if you die some more!}

{No_of_death==2: You die, again. Please don’t die so much, it will totally ruin the results of the test.} 

{No_of_death==3: You know, if you got this text means you went back and died again out of spite for me and for your culture. I will change your name to Snuggles at a random point in text if you keep on doing this!} 



{No_of_death>2 && gde_je_bio == "Chapter4": ->kurcspecial} 

{No_of_death>4: ->too_many_deaths}

+[NEXT]

-So, let me give you a chance to change your mind. Ahem, where were we...
->wherewerewe

==wherewerewe

{gde_je_bio=="Question5_001a": ->Question5_001a}

{gde_je_bio == "helperwolf2": ->helperwolf2}

{gde_je_bio == "Chapter3Q2": ->Chapter3Q2}

{gde_je_bio == "Chapter4": ->Chapter4}

{gde_je_bio == "Chapter4Q2B": ->Chapter4Q2B }

==kurcspecial

+Oh no

-Yeah, should have thought about this when you were trying to be funny, no. I stay with my decision.

Game Over.

+But please

-Nope. Game over, man. Game Over.

+Please, I promise to take it seriously and not sabotage the research anymore. And try to be serious and all and swear it, so may Rumplestilskin take my soul if I don't.

-You mean, Maptinko Klingač?

+Aren’t they the same thing? Grimm fairytale research shows…

-Ok, ok… fine. But be serious. I mean it this time!

Ahem, where were we...
...
*[NEXT]

->Chapter4

==too_many_deaths


-That’s it. You don't want to play along, fine! I am passively aggressing you. (You quit on the little circle button on the top. You are here 'cause you want to argue with the narrator. I know...)

+[Oh no]

-No, no. Not with the googly eyes.

+[But please]

-Nope.

+[Pleeeeeeease]

-No.

+[Pretty Pleeeeeeease]

-Now you will never find out how it ends. Also I've put in a loop here, so you can beg all you want....

+[Pretty Pleeeeeeease with strawberry on top]

-Loop circle one...of million! Enter next command.

+[Now, you're not being fair]

-Loop circle two...of gazillion! Enter next command.

+[Hey, that’s not a number]

-It is.

+[Oh, no it isn't]

-It is...you know what. Here, you get one more life!

{No_of_death>5: 
Also, because you just kept on dying and sabotaging this research, I’m changing your name…It’s Snuggles now! I told you there will be consequences.
~old_name = name
~name="Snuggles"
}

Ahem, where were we...
...
->wherewerewe


==Conclusion


And that's how the story goes, and the bird that told me the story still swears it by every word, and if I was lied to then I lied to you as well.

    ENDE
    
~game_progress = 98
    
*[No, wait. That's not the end. Surely there should be more.]

-No, that's about it.

*[Come on. Why was all this for? Why did I go through all of this.]

-Why for research, and academic progress of course.

*[Ugh...]

-Ummm, and for my love?

*[Better, but I still want more!]

-Well, there is a bit more here. But, to finish it, you will need to click the button that says SUBMIT, right there.
*[Is that the missing 2%?]
Exactly!
Once you do this, restart the game and the special super ending will be available. 

Don't forget you will need the internet to complete this!!!

*[Got it. Submit, also internet]

-If you don't have it, you can do it anytime from the main menu. 

*[yes, yes, yes]

-Once again, thanks for playing. You were a wonderful companion on this journey and I hope you enjoyed as well.



-                                KONIEC

*[Awwwww]
-> END





