BEGIN ~TITamah~

// 1. Feldepost Meeting

IF ~Global("TITamah","GLOBAL",2)~ THEN BEGIN a1
SAY~Well, hello, stranger! It's good to see you again. I'll have the waitress bring you a beer, if you like.~
++ ~Certainly. The name's <CHARNAME>, by the way.~ DO ~IncrementGlobal("TITamah","GLOBAL",1)~ + a1a
++ ~No thank you, but thanks for the offer. The name's <CHARNAME>, by the way.~ DO ~IncrementGlobal("TITamah","GLOBAL",1)~ + a1b
++ ~Remind me who you are...~ DO ~IncrementGlobal("TITamah","GLOBAL",1)~ + a1c
END

IF ~~ THEN BEGIN a1a
SAY~Yum! The beer is good, isn't it? You build up a powerful thirst when you've been stone as long as I have!~
IF ~~ THEN + a1a_01
END

IF ~~ THEN BEGIN a1b
SAY~Sure. Let me know if you change your mind. I'm enjoying a good drink and a good meal after such a long time without either!~
IF ~~ THEN + a1a_01
END

IF ~~ THEN BEGIN a1c
SAY~I'm Tamah. The adventurer you changed back to flesh from stone. I guess you must do that a lot, huh?~
IF ~~ THEN + a1a_01
END

IF ~~ THEN BEGIN a1a_01
SAY~So, <CHARNAME>, I again want to thank you for bringing me back to life. I'm still getting used to how much has changed. I've been stone for about twenty-five years, apparently. A lot changes. Thank heavens Feldepost's Inn is still here... It's a lot bigger than it used to be, though...~
++ ~You're welcome. *Laugh.* You were a lovely statue, but I prefer seeing you in the flesh...~ + b1
++ ~I got a good look at that house of yours, Tamah. It's fallen in on itself.~ + b1a
++ ~Have a good day, Tamah.~ EXIT
+ ~Global("TICamryn","GLOBAL",3)~ + ~I heard some things awhile back about a Tamah of Candlekeep. A friend of mine, Camryn, mentioned her. That wouldn't happen to be you, would it?~ + a2
END

IF ~~ THEN BEGIN b1
SAY~*Blushes.* Listen: I've been wondering how to reward you. You risked a lot to turn me back from stone. Basilisks, gnolls, and that madman Mutamin... It makes me shudder to think that I just traisped along into the middle of all that. I don't like feeling that I owe you, but I don't have the means to repay you! So...~
++ ~You don't owe me anything, Tamah. I was happy to help.~ + b1.1
++ ~And?~ + b1.2
++ ~Don't worry about that right now. You can figure that out some other time. Let's just have another drink and enjoy ourselves right now.~ + b1.1
+ ~Global("TICamryn","GLOBAL",3)~ + ~You still have one thing left after all these years; Camryn.~ + a2
END

IF ~~ THEN BEGIN b1a
SAY~Yes. I noticed that. As soon as I was flesh again, I went to check on my belongings. There's not much there anymore except a  transient. Gods bless him, I wouldn't have thought it fit for habitation at all... But he seems happy enough there so I gave him my leave to stay as long as he likes and consider it his. All I wanted were a few possessions I had stashed nearby.~
IF ~~ THEN + b1
END

IF ~~ THEN BEGIN b1.1
SAY~But that's so kind... Well, I'll make sure I tell everyone I know how kind and noble you are!~
++ ~I appreciate that...~ + b1alt
++ ~Thank you, Tamah.~ + b1alt
+ ~Global("TICamryn","GLOBAL",3)~ + ~Hey! I almost forgot! You wanted to talk about Camryn, remember?~ + a2
END

IF ~~ THEN BEGIN b1alt
SAY~*You spend the next couple of hours trading stories of bravery and adventure.* Take care, my friend. I'll never forget your kindness to me... And I'll make sure that others know of it, too.~
++ ~Thank you, Tamah. I had a nice time.~ DO ~AddexperienceParty(250) SetGlobal("DMWWRepBoost","GLOBAL",1)~ EXIT
+~Global("TICamryn","GLOBAL",3)~+ ~Oh, I almost forgot Camryn. I meant to talk to you about Camryn, Tamah.~ + a2
END

IF ~~ THEN BEGIN b1.2
SAY ~Well...~
+ ~CheckStatGT(Player1,14,CHR) Gender(Player1,MALE)~ + ~Go on...~ + b1.2malechahigh
+ ~CheckStatGT(Player1,14,CHR) Gender(Player1,FEMALE)~ + ~Go on...~ + b1.2femalechahigh
+ ~!CheckStatGT(Player1,14,CHR)~ + ~Go on...~ + b1.1_01
END

IF ~~ THEN BEGIN b1.1_01
SAY ~I like you. Even before I was petrified, I didn't know many people who I could talk to.  Anyway, I'm grateful for the opportunity to have a few drinks in good company.~
IF ~~ THEN + b1alt
END

IF ~~ THEN BEGIN b1.2malechahigh
SAY ~Maybe it's just the beer talking, but I have noticed that you're a handsome man. And, I've discovered that you're kind, noble, and willing to help someone in need without asking anything in return. That's VERY attractive. And, frankly, it's been years since I've... well, I won't talk about that here.~
IF ~~ THEN + b1.2_01
END

IF ~~ THEN BEGIN b1.2femalechahigh
SAY ~Maybe it's just the beer talking, but I have noticed that you're a beautiful woman. And, I've discovered that you're kind, noble, and willing to help someone in need without asking anything in return. That's VERY attractive. And it's been years since I've... well, I won't talk about that here.~
IF ~~ THEN + b1.2_01
END

IF ~~ THEN BEGIN b1.2_01
SAY ~*Takes another swallow of her beer.* I've lost everything, see? Even my house has caved in on itself! I was able to recover a few books and enough gold from the wreckage to rent a room and figure out what to do, but I'm feeling overwhelmed and... and alone. You know what I mean?~
++ ~Yes. I've been there myself.~ + b2.1
++ ~I'm sorry about all that.~ + b2.1
++ ~*Sip your drink.*~ + b2.1
++ ~Sounds like it was easier to be stone than to be alive, huh?~ + b2.2
++ ~So what are you saying?~ + b2.3
END

IF ~~ THEN BEGIN b2.1
SAY~But I don't want to bore you with my problems. I want to enjoy tonight! I want to drink and laugh with someone...someone special.~
IF ~~ THEN + b2.1_01
END

IF ~~ THEN BEGIN b2.2
SAY~Yes. A lot easier. Coming back to life has reminded me of so many things I left... unfinished, I guess. Losing a quarter of a century has taken my former life away from me; my family, my friends, and even my home. But I must be boring you... I want to drink and laugh tonight. Spend time with someone special.~
IF ~~ THEN + b2.1_01
END

IF ~~ THEN BEGIN b2.3
SAY~I can see that you're also the sort of person who gets right to the point.~
IF ~~ THEN + b2.1_01
END

IF ~~ THEN BEGIN b2.1_01
SAY~*Puts down her glass and looks at you intently.* I was thinking you and I might spend some time together. Get to know each other. Have a good time. *Laughs.* And you DID say I was a lovely statue.~
++ ~Are you offering a 'Hero's Reward', Tamah?~ + b3.1
++ ~I take it that you want me to make sure all parts are depetrified? Couldn't you get a priest for that?~ + b3.2
++ ~You are lovely, Tamah, but I don't want you feeling that you have to reward me.~ + b3.3
++ ~You are lovely, Tamah, but I'm not interested in women. Maybe we could just have a drink or two?~ + b3.3
END

IF ~~ THEN BEGIN b3.1
SAY~I hope more than that... But we could just enjoy some time together. Or something. *Sighs.*~
IF ~~ THEN + b3.1_01
END

IF ~~ THEN BEGIN b3.2
SAY~*Laughs.* I could. But maybe I'd like a little more...personal attention than most priests are willing to give.~
IF ~~ THEN + b3.1_01
END

IF ~~ THEN b3.1_01
SAY~You know, I don't know if it's the beer talking or me, <CHARNAME>. I'm sorry. I'm not sure what I'm suggesting. Maybe I'm just mixed-up and need a shoulder to cry on, <CHARNAME>. See, I'm recovering from the break-up of a long-term relationship. My first love. Thirty years ago, I left a man I dearly loved because I felt... well... that he was like stone--incapable of change. *Laughs.* Funny that just when I'd rebuilt my life... BOOM! I'm stone!~
++ ~Tell you what... Let's just have a few drinks this evening. Maybe... Maybe you can reward me later.~ + b1alt
++ ~*Sigh.* You don't really want to spend time with me, Tamah.~ + b3.1_01a
++ ~I could help you forget him, Tamah. I'd love to spend the night with you... Get to know you better.~ + b3.1_01b
+~Global("TICamryn","GLOBAL",3)~+ ~We REALLY need to talk about Camryn, Tamah.~ + a2
END

IF ~~ THEN BEGIN b3.1_01a
SAY~*Tamah sighs sadly and shrugs.* I guess not. I mean, I AM attracted to you, but I guess I haven't really gotten over leaving Camryn. I can't believe thirty years have passed... He's an elf, though. And lives in the safest place I can think of. We lived and worked together for fifteen years. Do... Do you think he's forgotten me? *Laughs.* I guess that's a silly question.~
IF ~~ THEN + b1alt
END

IF ~~ THEN BEGIN b3.1_01b
SAY~*Tamah sighs sadly and rubs her eyes.* I'm so tempted, <CHARNAME>. I mean, I AM attracted to you, but I shouldn't have offered... I'd probably start crying or call out his name or something and ruin the mood... I haven't really gotten over leaving Camryn. I can't believe thirty years have passed... He's an elf, though. And lives in the safest place I can think of. We lived and worked together for fifteen years. Do... Do you think he's forgotten me? *Laughs.* I guess that's a silly question.~
IF ~~ THEN + b1alt
END

IF ~~ THEN BEGIN b3.3
SAY~Well, I had to get that out in the open. Yes! Another drink.~
IF ~~ THEN + b1alt
END

IF ~~ THEN BEGIN b1.3
SAY~Yeah. That's a good idea. Well, given that you managed to rescue me in a nest of basilisks, I guess you must be pretty good at what you do.~
IF ~~ THEN + b1alt
END

IF ~~ THEN BEGIN a2
SAY~Ummm, yes. Camryn. He... He was a very special friend...at Candlekeep. We didn't part on good terms, I thought. When you mentioned him to me so soon after awakening, I didn't know what to think.~
IF ~~ THEN + a2.para2.noletter
IF ~PartyHasItem("TIC0SCRL")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC1SCRL")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC2SCRL")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC3SCRL")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC4SCRL")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC5SCRL")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC6SCRL")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC7SCRL")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC8SCRL")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC9SCRL")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC10SCR")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC11SCR")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC12SCR")~ THEN +  a2.para2.letter
IF ~PartyHasItem("TIC13SCR")~ THEN +  a2.para2.letter
END

IF ~~ THEN BEGIN a2.para2.letter
SAY ~*Bitterly.* With the kind of lifestyle he's chosen, I imagine he must still be doing well these days.~
++ ~I guess. He's still a hermit, if that's what you mean. He still loves you, though.~ + a2a
++ ~Tamah, he's been writing love letters to you like this one for thirty years.~ + a2b
++ ~I am so glad that this isn't my problem!~ + a2d
END

IF ~~ THEN BEGIN a2.para2.noletter
SAY ~*Bitterly.* With the kind of lifestyle he's chosen, I imagine he must still be doing well these days.~
++ ~I guess. He's still a hermit, if that's what you mean. He still loves you, though.~ + a2a
++ ~I am so glad that this isn't my problem!~ + a2d
END

IF ~~ THEN BEGIN a2a
SAY~I'll be honest, <CHARNAME>. I still love him. But I'm not sure that that's enough.~
IF ~~ THEN + a3o
END

IF ~~ THEN BEGIN a2d
SAY~Aren't you the lucky one, then?~
IF ~~ THEN + a3o
END

IF ~~ THEN BEGIN a2b
SAY~You'd better let me have a look.~
+~PartyHasItem("TIC1SCRL") Global("TICMeet","LOCALS",0)~ + ~There's this one. It's printed with a border of roses..~ ~DestroyItem("TIC1SCRL")~ + a3b
+~PartyHasItem("TIC2SCRL")Global("TICHair","LOCALS",0)~ + ~There's this one written in gold ink.~ ~DestroyItem("TIC2SCRL")~ + a3c
+~PartyHasItem("TIC3SCRL")Global("TICEyes","LOCALS",0)~ + ~There's this one. It's got some little drawings of cherubs on it.~ ~DestroyItem("TIC3SCRL")~ + a3d
+~PartyHasItem("TIC4SCRL")Global("TICLife","LOCALS",0)~ + ~There's this one printed on blue paper.~ ~DestroyItem("TIC4SCRL")~ + a3e
+~PartyHasItem("TIC5SCRL")Global("TICFriends","LOCALS",0)~ + ~There's this one illuminated with gold leaf.~ ~DestroyItem("TIC5SCRL")~ + a3f
+~PartyHasItem("TIC6SCRL")Global("TICSex","LOCALS",0)~ + ~There's this one... He must have put perfume on the paper... It smells like sandalwood and jasmine.~ ~DestroyItem("TIC6SCRL")~ + a3g
+~PartyHasItem("TIC7SCRL")Global("TICFight","LOCALS",0)~ + ~This is the prettiest one; he uses gold ink AND paper printed with a border of roses on linen paper.~ ~DestroyItem("TIC7SCRL")~ + a3h
+~PartyHasItem("TIC8SCRL")Global("TICFamily","LOCALS",0)~ + ~This one feels a bit thicker than the rest.~ ~DestroyItem("TIC8SCRL")~ + a3i
+~PartyHasItem("TIC9SCRL")Global("TICBooks","LOCALS",0)~ + ~This one has pictures of books on it.~ ~DestroyItem("TIC9SCRL")~ + a3j
+~PartyHasItem("TIC10SCR")Global("TICMyLove","LOCALS",0)~ + ~This one is written on vellum.~ ~DestroyItem("TIC10SCR")~ + a3k
+~PartyHasItem("TIC11SCR")Global("TICBed","LOCALS",0)~ + ~Oh my... This one's printed on linen, but it's as smooth as silk and it smells of perfume, too.~ ~DestroyItem("TIC11SCR")~ + a3l
+~PartyHasItem("TIC12SCR")Global("TICMarriage","LOCALS",0)~ + ~This one has entwined gold rings drawn on it.~ ~DestroyItem("TIC12SCR")DestroyItem("TICAMRIN")~ + a3m
+~PartyHasItem("TIC13SCR")Global("TICArgument","LOCALS",0)~ + ~Huh! This one looks like a party invitation.~ ~DestroyItem("TIC13SCR")~ + a3n
++ ~That's all I have.~ + a3o
END

IF ~~ THEN BEGIN a2c
SAY~Do you have any others?~
+~PartyHasItem("TIC1SCRL") Global("TICMeet","LOCALS",0)~ + ~There's this one. It's printed with a border of roses..~ ~DestroyItem("TIC1SCRL")~ + a3b
+~PartyHasItem("TIC2SCRL")Global("TICHair","LOCALS",0)~ + ~There's this one written in gold ink.~ ~DestroyItem("TIC2SCRL")~ + a3c
+~PartyHasItem("TIC3SCRL")Global("TICEyes","LOCALS",0)~ + ~There's this one. It's got some little drawings of cherubs on it.~ ~DestroyItem("TIC3SCRL")~ + a3d
+~PartyHasItem("TIC4SCRL")Global("TICLife","LOCALS",0)~ + ~There's this one printed on blue paper.~ ~DestroyItem("TIC4SCRL")~ + a3e
+~PartyHasItem("TIC5SCRL")Global("TICFriends","LOCALS",0)~ + ~There's this one illuminated with gold leaf.~ ~DestroyItem("TIC5SCRL")~ + a3f
+~PartyHasItem("TIC6SCRL")Global("TICSex","LOCALS",0)~ + ~There's this one... He must have put perfume on the paper... It smells like sandalwood and jasmine.~ ~DestroyItem("TIC6SCRL")~ + a3g
+~PartyHasItem("TIC7SCRL")Global("TICFight","LOCALS",0)~ + ~This is the prettiest one; he uses gold ink AND paper printed with a border of roses on linen paper.~ ~DestroyItem("TIC7SCRL")~ + a3h
+~PartyHasItem("TIC8SCRL")Global("TICFamily","LOCALS",0)~ + ~This one feels a bit thicker than the rest.~ ~DestroyItem("TIC8SCRL")~ + a3i
+~PartyHasItem("TIC9SCRL")Global("TICBooks","LOCALS",0)~ + ~This one has pictures of books on it.~ ~DestroyItem("TIC9SCRL")~ + a3j
+~PartyHasItem("TIC10SCR")Global("TICMyLove","LOCALS",0)~ + ~This one is written on vellum.~ ~DestroyItem("TIC10SCR")~ + a3k
+~PartyHasItem("TIC11SCR")Global("TICBed","LOCALS",0)~ + ~Oh my... This one's printed on linen, but it's as smooth as silk and it smells of perfume, too.~ ~DestroyItem("TIC11SCR")~ + a3l
+~PartyHasItem("TIC12SCR")Global("TICMarriage","LOCALS",0)~ + ~This one has entwined gold rings drawn on it.~ ~DestroyItem("TIC12SCR")DestroyItem("TICAMRIN")~ + a3m
+~PartyHasItem("TIC13SCR")Global("TICArgument","LOCALS",0)~ + ~Huh! This one looks like a party invitation.~ ~DestroyItem("TIC13SCR")~ + a3n
++ ~That's all I have.~ + a3o
END

IF ~~ THEN BEGIN a3b
SAY~*Reading.* Funny that he'd remember me saying that he reminded me of my grandfather... It was a compliment, by the way. I loved my grandfather.~
IF ~~ THEN DO ~SetGlobal("TICMeet","LOCALS",1) IncrementGlobal("TISCRLLove","LOCALS",1) AddexperienceParty(50)~ + a2c
END

IF ~~ THEN BEGIN a3c
SAY~*Reading.* And to think I used to worry about what my hair looked like in the mornings!~
IF ~~ THEN DO ~SetGlobal("TICHair","LOCALS",1) IncrementGlobal("TISCRLLove","LOCALS",1) AddexperienceParty(50)~ + a2c
END

IF ~~ THEN BEGIN a3d
SAY~*Reading.* Yes... He was sweet about that. Camryn was the first man I've met who looked at my eyes rather than my chest...~
IF ~~ THEN DO ~SetGlobal("TICEyes","LOCALS",1) IncrementGlobal("TISCRLLove","LOCALS",1) AddexperienceParty(50)~ + a2c
END

IF ~~ THEN BEGIN a3e
SAY~*Reading.* I tried and tried to get him to leave that 'Ivory Tower' he lived in. I thought by taking him to dinner, sharing drinks, and walking in the garden, he'd gain confidence to leave Candlekeep entirely.~
IF ~~ THEN DO ~SetGlobal("TICLife","LOCALS",1) IncrementGlobal("TISCRLLove","LOCALS",1) AddexperienceParty(50)~ + a2c
END

IF ~~ THEN BEGIN a3f
SAY~*Reading.* Oh yes... The terrible trio: Ulraunt, Tethoril, and Gorion. You don't know how many stories about 'the old days' I had to suffer through just to spend time with Camryn.~
IF ~~ THEN DO ~SetGlobal("TICFriends","LOCALS",1) IncrementGlobal("TISCRLLove","LOCALS",1) AddexperienceParty(50)~ + a2c
END

IF ~~ THEN BEGIN a3g
SAY~*Blushes, tucking the letter in her bodice.* After three hundred years, you wouldn't think he would be as...erm...sprightly as he was. I mean, he looked ageless, but elves always do... Anyway, all I'll say about this one is that Camryn has a good imagination and even better technique.~
IF ~~ THEN DO ~SetGlobal("TICSex","LOCALS",1) IncrementGlobal("TISCRLLove","LOCALS",1) AddexperienceParty(50)~ + a2c
END

IF ~~ THEN BEGIN a3h
SAY~*Wipes her eyes with her sleeve.* I really wish I'd known he was sorry--how he really felt. It would have changed things between us.~
IF ~~ THEN DO ~SetGlobal("TICFight","LOCALS",1) IncrementGlobal("TISCRLLove","LOCALS",1) AddexperienceParty(50)~ + a2c
END

IF ~~ THEN BEGIN a3i
SAY~*Reading.* Oh, my heart! Children! He remembered that conversation after all. I thought it was just me wanting a family...~
IF ~~ THEN DO ~SetGlobal("TICFamily","LOCALS",1) IncrementGlobal("TISCRLLove","LOCALS",1) AddexperienceParty(50)~ + a2c
END

IF ~~ THEN BEGIN a3j
SAY~*Reading.* That would have worked...except that stupid me ran into a basilisk and got turned to stone only a few years after I left Candlekeep!~
IF ~~ THEN DO ~SetGlobal("TICBooks","LOCALS",1) IncrementGlobal("TISCRLLove","LOCALS",1) AddexperienceParty(50)~ + a2c
END

IF ~~ THEN BEGIN a3k
SAY~*Tamah reads.* I never thought he was heartless... Only stubborn.*~
IF ~~ THEN DO ~SetGlobal("TICMyLove","LOCALS",1) IncrementGlobal("TISCRLLove","LOCALS",1) AddexperienceParty(50)~ + a2c
END

IF ~~ THEN BEGIN a3l
SAY~*Tamah blushes deeply, then closes and reseals the letter without saying a word.*~
IF ~~ THEN DO ~SetGlobal("TICBed","LOCALS",1) IncrementGlobal("TISCRLLove","LOCALS",1) AddexperienceParty(50)~ + a2c
END

IF ~~ THEN BEGIN a3m
SAY~*Tamah looks up from the letter.* That's Camryn for you. Such a romantic!~
IF ~~ THEN DO ~SetGlobal("TICMarriage","LOCALS",1) IncrementGlobal("TISCRLLove","LOCALS",1) AddexperienceParty(50)~ + a2c
END

IF ~~ THEN BEGIN a3n
SAY~*Her eyes look moist as she reads.* Oh... Oh my. He's been reliving when I left. How terrible. Maybe I do need to see him again... Talk to him.~
IF ~~ THEN DO ~SetGlobal("TICArgument","LOCALS",1) IncrementGlobal("TISCRLLove","LOCALS",1) AddexperienceParty(50)~ + a2c
END

IF ~~ THEN BEGIN a3o
SAY~Thank you for bringing me this information. I guess I might as well admit that Camryn was more than a friend. It's just I need to think about what this all means for me. I need to stay here awhile and decide what to do. If you find any other letters, you can bring them here for me. Or... Do you think I should make a decision now?~
++ ~Let me see if I can find more letters.~ + a3x
++ ~I wouldn't wait any longer, Tamah. It's been thirty years: isn't that enough?~ DO ~IncrementGlobal("TITamah","GLOBAL",1) IncrementGlobal("TICamryn","GLOBAL",1)~ + a3y
END

IF ~~ THEN BEGIN a3x
SAY~Very well. I'll just stay here. Thank you for your kindness, <CHARNAME>.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN a3y
SAY~You know, I wish I was as decisive as you are. I have such mixed feelings about Camryn. Should I go back to Candlekeep and talk to him about the future? Or should I just forget the past and start my life over? What do you think I should do?~
+ ~GlobalLT("TISCRLLove","GLOBAL",5)~ + ~Do you really want my opinion?~ + a6a
+ ~Global("TISCRLLove","GLOBAL",5)~ + ~Do you really want my opinion?~ + a6b
+ ~Global("TISCRLLove","GLOBAL",6)~ + ~Do you really want my opinion?~ + a6b
+ ~Global("TISCRLLove","GLOBAL",7)~ + ~Do you really want my opinion?~ + a6b
+ ~Global("TISCRLLove","GLOBAL",8)~ + ~Do you really want my opinion?~ + a6b
+ ~GlobalGT("TISCRLLove","GLOBAL",8)~ + ~Do you really want my opinion?~ + a6c
END

IF ~~ THEN BEGIN a6a
SAY~I need some kind of objective view. I mean, after thirty years, Camryn's STILL talking about his love for me?  Oh, elves. Once their mind is set, there is no changing it. You wouldn't believe the arguments we used to have. Camryn refused to leave Candlekeep even briefly for years. I could never see my family or my friends unless we made all kinds of difficult arrangements for them to come see us. Camryn was a hermit, so I became one, too. I hated it.~
=~I don't know that a few letters can change the bitterness I feel in my heart over how he kept me imprisoned by his love for me. I feel an urge to go back, but how much of that is because I'm struggling to reintegrate with the world and, well, he's familiar? I don't know if I even love him anymore.~
IF ~~ THEN DO ~SetGlobal("TICamLoveCount","GLOBAL",1)~+ a6a_01
END

IF ~~ THEN BEGIN a6b
SAY~Oh, dear gods. YES! Part of me remembers sweet Camryn so fondly. He was my first--well, in Candlekeep, choice is limited, right? And I WOULD like to go back to him. Our love-affair was the one really bright spot of an otherwise pretty dreary job. I love to Illuminate manuscripts, but most of being a scribe is merely copying words... Ugh...~
=~And then part of me reminds me of the difficulties we had that only increased as the years went by. We became lovers when I was ... what? 18? And you show me a stack of letters that say he STILL loves me? Does he really think I am still the young, stormy, naive girl I was when I left? The five years I had before I ran into the basilisk were so refreshing and I'm not sure if I love him enough to live with him again.~
IF ~~ THEN DO ~SetGlobal("TICamLoveCount","GLOBAL",2)~ + a6a_01
END

IF ~~ THEN BEGIN a6c
SAY~*Weeping.* YES! I don't know what to think! I mean, thirty years have passed for him, but only five for me! What pain he must have suffered... Camryn probably figured he'd never see me again, but continued to write me letters because he was bonded and walked with me every night in his reverie. And then there's the fact that he's willing to leave. I don't know if I can trust that impulse, but even the impulse is such a big change for him!~
=~I don't know that even this many letters can completely erase the bitterness I feel in my heart over how he kept me imprisoned by his love for me. Yet, how just is that bitterness? Not once in these letters does he rail at me or angrily confront me for leaving him. Oh gods... and I still love him...~
IF ~~ THEN DO ~SetGlobal("TICamLoveCount","GLOBAL",3)~ + a6a_01
END

IF ~~ THEN BEGIN a6a_01 //will alter when basics of cutscene are figured out...
SAY~Yes, please, <CHARNAME>. Advise me on what my options are... I need to be fair to Camryn and myself.~
++ ~Your work is valuable enough to get you back into Candlekeep. I would go back to him and try to start a new life together. After all, he does love you and he's waited for you for so many years.~ + a7a
++ ~Your work is valuable enough to get you back into Candlekeep. I would go back to him and at least try to talk about it. He's willing to leave. That's a big step. And who knows where the future may lead you...~ + a7a
++ ~You should at least write back to him. Tell him what your feelings are. Maybe you can work something out that way.~ + a7a
++ ~I didn't realize how unhappy you were with him. I think it's better for you to keep your freedom now that you have it.~ + a7a
++ ~I think you should listen to your own heart. It'll tell you the truth.~ + a7a
END

IF ~~ THEN BEGIN a7a
SAY~I'll have to think about this. Have a good <DAYNIGHT>, <CHARNAME>. I shall always remember you fondly as the one who returned me to life.~
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

// 2. Second (and more) meeting(s) with Tamah

IF ~Global("TITamah","GLOBAL",3)~ THEN BEGIN a4
SAY~Hello again, <CHARNAME>. What can I do for you?~
IF ~~ THEN + a4.para2.noletter
IF ~PartyHasItem("TIC0SCRL")~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC1SCRL")~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC2SCRL")~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC3SCRL")~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC4SCRL")~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC5SCRL")~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC6SCRL")~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC7SCRL")~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC8SCRL")~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC9SCRL")~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC10SCR")~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC11SCR")~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC12SCR")~ THEN +  a4.para2.letter
IF ~PartyHasItem("TIC13SCR")~ THEN +  a4.para2.letter
END

IF ~~ THEN BEGIN a4.para2.letter
SAY ~Letters from Camryn? Good heavens! When did he have time to keep up with the copy requests?~
IF ~~ THEN + a2b
END

IF ~~ THEN BEGIN a4.para2.noletter
SAY ~I'd love to talk more, but I'm just not good company right now. Let me know if you find more letters.~
IF ~~ THEN EXIT
END

// 3. Fight with Doppleganger

IF ~Global("TICamLoveCount","GLOBAL",1) See(Player1) See("TICam")~ THEN BEGIN Dopp1
SAY~Camryn! Look out! That...That thing is after you!~
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS2")~ EXIT
END

IF ~Global("TICamLoveCount","GLOBAL",2) See(Player1) See("TICam")~ THEN BEGIN Dopp2
SAY~Camryn! Look out! That...That thing is after you!~
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS1")~ EXIT
END

IF ~Global("TICamLoveCount","GLOBAL",3) See("TICam")~ THEN BEGIN Dopp3
SAY~Camryn! Look out! That...That thing is after you!~
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("TICamCS1")~ EXIT
END

// 4. Post-rescue Dialogue

IF ~!Dead("TICam") Global("TITamah","GLOBAL",4)!See([ENEMY])~ THEN BEGIN t1
SAY~So it ends, <CHARNAME>.~
++ ~Are you okay, Tamah?~ DO ~IncrementGlobal("TITamah","GLOBAL",1)~ + t1a
++ ~That doppleganger...~ DO ~IncrementGlobal("TITamah","GLOBAL",1)~ + t1b
++ ~What will you do now, Tamah?~ DO ~IncrementGlobal("TITamah","GLOBAL",1)~ + t1c
END

IF ~~ THEN BEGIN t1a
SAY~I am unhurt. And, even better, my dear Camryn is unhurt as well.~
IF ~~ THEN + t1a_01
END

IF ~~ THEN BEGIN t1b
SAY~Ugh! Horrible thing! As I looked at it, I could see it changing. Looking more and more like Camryn. Whatever it is, it clearly meant to kill and replace Camryn. *Scowling.* It might also explain why some of the people here--the ones I used to know so well--didn't seem to remember me at all.~
IF ~~ THEN + t1a_01
END

IF ~~ THEN BEGIN t1c
SAY~Try to make up for lost time... I could have been with him all these years instead of being pent up in stone...~
IF ~~ THEN + t1a_01
END

IF ~~ THEN BEGIN t1a_01
SAY ~You gave me my life back, <CHARNAME>. If we both survive the days ahead, perhaps one day in the future, we will all meet again for a drink in honor of living life.~
= ~But my racing mind is distracting me from what I wished to say: I need to warn you. There is danger here in Candlekeep--you've seen but a taste of it. I wouldn't trust anyone here. It's just as Camryn has said... That creature was likely not alone in its purpose. Trust no one! Farewell.~
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

// 5. Post-Death Dialogue

IF ~Dead("TICam") Global("TITamah","GLOBAL",4)!See([ENEMY])~ THEN BEGIN t2
SAY~So it ends, <CHARNAME>. I only regret I did not return sooner that I might still have my poor Camryn. *Sob.* My first sight upon coming upstairs to his room was to see that creature all over him. Then, he turned to look at me and his eyes lit up. He...he seemed to know I'd come back... And then...and then...~
++ ~Are you okay, Tamah?~ DO ~IncrementGlobal("TITamah","GLOBAL",1)~ + t2a
++ ~That...That creature...~ DO ~IncrementGlobal("TITamah","GLOBAL",1)~ + t2b
++ ~At least he saw you... Before he died.~ DO ~IncrementGlobal("TITamah","GLOBAL",1)~ + t2c
END

IF ~~ THEN BEGIN t2a
SAY~I am unhurt. But my heart aches as it never has before.~
IF ~~ THEN + t2a_01
END

IF ~~ THEN BEGIN t2b
SAY~Ugh! Horrible thing! When I first saw it, it looked different... Kind of 'unformed' in a way. And then, as I looked at it, I could see it changing. Looking more and more like Camryn. Whatever it is, it clearly meant to replace Camryn. *Scowling.* It might also explain why some of the people here--the ones I used to know so well--didn't seem to remember me at all.~
IF ~~ THEN + t2a_01
END

IF ~~ THEN BEGIN t2c
SAY~Yes, although that is a very small comfort for one who was gone so long... I could have been with him all these years instead of being pent up in stone...~
IF ~~ THEN + t2a_01
END

IF ~~ THEN BEGIN t2a_01
SAY ~I think I will go to Baldur's Gate. Stop over at the best Inn I can afford; try to recall every memory I have of him. You gave me my life back, <CHARNAME>. If we both survive the days ahead, perhaps one day in the future, we will meet again for a drink in his honor.~
= ~But these melancholy thoughts are distracting me from what I wished to say: I need to warn you. There is danger here in Candlekeep--you've seen but a taste of it. I wouldn't trust anyone here. The...thing that killed Camryn was likely not alone in its purpose. Trust no one! Farewell.~
IF ~~ THEN DO ~EscapeArea()~ EXIT
END
