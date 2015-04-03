BEGIN ~TICam~

// 1. Candlekeep Inn
IF ~Global("TICamryn","GLOBAL",2)~ THEN BEGIN a1
SAY~Oh, hello, <CHARNAME>! Good to see you on such a fine day!~
++ ~Uhhhh... Camryn? You've noticed that it looks like it's about to rain, haven't you?~ DO ~IncrementGlobal("TICamryn","GLOBAL",1)~ + a1a
++ ~Good to see you, too, Camryn. It's been awhile since the last time you came out of the Library, hasn't it?~ DO ~IncrementGlobal("TICamryn","GLOBAL",1)~ + a1b
++ ~Yep! Nice weather to be out and about!~ DO ~IncrementGlobal("TICamryn","GLOBAL",1)~ + a1c
++ ~Who are you?~ DO ~IncrementGlobal("TICamryn","GLOBAL",1)~ + a1d
END

IF ~~ THEN BEGIN a1a
SAY~Oh, yes. I do admit to having weak eyes from all the years of reading and writing manuscripts, but I can still tell when it's raining. That doesn't matter. It still feels like a fine day to me.~
IF ~~ THEN + a1a_01
END

IF ~~ THEN BEGIN a1b
SAY~Hmmm. Let's see... Today is <DAYANDMONTH> of the year <YEAR>, and I was last out of the library in Ches of the year 1339, so, it's been... Oh, my! Thirty years. Now that I think about it, I don't think that I've left the Library during your lifetime!~
IF ~~ THEN + a1a_01
END

IF ~~ THEN BEGIN a1c
SAY~*Smiles.* It does my heart good to see youngsters like yourself and Imoen running around the halls of Candlekeep. You don't know how quiet and dismal this place can be.~
IF ~~ THEN + a1a_01
END

IF ~~ THEN BEGIN a1d
SAY~I can see it's been too long since I last emerged from my office. Surely you remember me! You played in my office many times when you were small. And I've been your father Gorion's friend since he arrived here. *Laughs.* I've been playing cards on Second-Day and Seventh-Day nights with Gorion, Ulraunt, and Tethtoril since they were all young scamps not too much older than yourself, <CHARNAME>!~
IF ~~ THEN + a1a_01
END

IF ~~ THEN BEGIN a1a_01
SAY~I suppose it has been a long time since Candlekeep's Master Illuminator and Scribe has been out of the Library, though. There are so many requests for books to be copied and so little time.~
++ ~Illuminator and scribe? So you copy books and decorate them, eh?~ + a2a
++ ~That might explain why I haven't seen you on the grounds before.~ + a2b
++ ~Surely you haven't just been inside the Library all this time!~ + a2c
END

IF ~~ THEN BEGIN a2a
SAY~Yes. Since the books are never allowed to leave the Library, many patrons make requests for copies to be made of books or sections of books. I have a team of scribes that copy the words plus three assistant Illuminators who just do pictures. It costs the patrons extra for us to add pictures, you know,and sometimes the original work is so rare that even a copy of the book becomes very valuable.~
IF ~~ THEN + a2_01
END

IF ~~ THEN BEGIN a2b
SAY~Indeed. Although there was a time once when I would go out and look at the stars from the front steps of the Library and then have a few drinks at the Inn.~
IF ~~ THEN + a2_01
END

IF ~~ THEN BEGIN a2c
SAY~I suppose that would seem strange to a young, adventurous soul like you, but I've always been the sort of person who stayed home and kept to a routine.~
IF ~~ THEN + a2_01
END

IF ~~ THEN BEGIN a2_01
SAY~*Gazes off into space.* I suppose my habit of keeping to myself and my routine has kept me from ever truly experiencing life. Oghma discourages taking much interest in the outside world. Of course, that's what Tamah always said. I didn't start seeing her point of view until it was too late. But nevermind that! You get along and enjoy the fresh air while you still can. Otherwise, you'll get to be old and crabby like me!~
++ ~I take it that you know that I'm leaving Candlekeep?~ + a3a
+ ~PartyHasItem("TIC0SCRL")~ + ~By the way... Phlydia found this letter in the spine of a book I was retrieving for her. I wondered if you knew anything about it?~ DO ~SetGlobal("TICamLetter1","GLOBAL",1)~ + a3b
END

IF ~~ THEN BEGIN a2_02
SAY~I'd like to go get a drink at the Inn now... Is there anything else you need from me?~
+ ~PartyHasItem("TIC0SCRL")~ + ~By the way... Phlydia found this letter in the spine of a book I was retrieving for her. I wondered if you knew anything about it?~ DO ~SetGlobal("TICamLetter1","GLOBAL",1)~ + a3b
END

IF ~~ THEN BEGIN a3a
SAY~Yes, young one. When I heard Gorion and Ulraunt arguing, I tried to intercede. I spoke to Ulraunt of the dangers outside Candlekeep and that I thought you would be safer here, but he wouldn't listen to me. At least you'll have Gorion with you. That's a blessing. I will miss you, my dear <CHARNAME>. I've often felt that there needed to be children here to bring life to the place...~
IF ~~ THEN + a2_02
END

IF ~~ THEN BEGIN a3b
SAY~*Sigh.* Now why would you think that it's mine? There are many books in the Library, you know. Who knows what patrons will leave in them.~
+ ~Global("TICamInit","LOCALS",0)~ + ~The letter is written by someone calling themself "C."~ DO ~SetGlobal("TICamInit","LOCALS",1)~ + a4a
+ ~Global("TICamScribe","LOCALS",0)~ + ~The letter was hidden in the spine of the book! You probably copied the book in the first place, didn't you?~ DO ~SetGlobal("TICamScribe","LOCALS",1)~  + a4b
+ ~Global("TICamHandwrit","LOCALS",0)~ + ~Because the handwriting looks like yours.~ DO ~SetGlobal("TICamHandwrit","LOCALS",1)~ + a4c
+ ~Global("TICamTamah","LOCALS",0)~ + ~The letter's addressed to a woman named Tamah. You mentioned her the last time we talked.~ DO ~SetGlobal("TICamTamah","LOCALS",1)~ + a4d
END

IF ~~ THEN BEGIN a3ba
SAY ~Any other reason you think the letter is mine...?~
+ ~Global("TICamInit","LOCALS",0)~ + ~The letter is written by someone calling themself 'C.'~ DO ~SetGlobal("TICamInit","LOCALS",1)~ + a4a
+ ~Global("TICamScribe","LOCALS",0)~ + ~The letter was hidden in the spine of the book! You probably copied the book in the first place, didn't you?~ DO ~SetGlobal("TICamScribe","LOCALS",1)~  + a4b
+ ~Global("TICamHandwrit","LOCALS",0)~ + ~Because the handwriting looks like yours.~ DO ~SetGlobal("TICamHandwrit","LOCALS",1)~ + a4c
+ ~Global("TICamTamah","LOCALS",0)~ + ~The letter's addressed to a woman named Tamah. You mentioned her the last time we talked.~ DO ~SetGlobal("TICamTamah","LOCALS",1)~ + a4d
END

IF ~~ THEN BEGIN a4a
SAY~There are a lot of names that begin with a 'C'.~
IF ~~ THEN + a3ba
END

IF ~~ THEN BEGIN a4b
SAY~I might have copied the book, yes. Or it could have been one of the other scribes. And there's the fact that anyone could have hidden the letter in a book that I originally copied.~
IF ~~ THEN + a3ba
END

IF ~~ THEN BEGIN a4c
SAY~*Sigh.* That would be a little harder to explain away, I guess. Yes, young one, that's my writing.~
IF ~~ THEN + a5
END

IF ~~ THEN BEGIN a4d
SAY~*Camryn blushes.* Oh. Did I mention her? She was one of my assistant Illuminators many years ago. I'm not surprised she was meant to be the recipient of the letter: she was very beautiful and, even better, very intelligent. Books that she has done the illustrations for are very, very valuable these days, too. That letter only proves someone loved her and hoped she would open that book.~
IF ~~ THEN + a3ba
END

IF ~~ THEN BEGIN a5
SAY~I might as well admit it to someone. Tamah and I were lovers once. But she felt trapped by the high walls--the very walls that help me feel safe. She tried to persuade me that we should leave, but no matter what she said, I had a counter-argument. Finally, she went without me. I haven't heard from her since.~
++ ~But what about the letter? Why didn't you send it?~ + a5a
++ ~It might have helped to have actually SENT the letter to her, Camryn.~ + a5b
++ ~No offense, but I understand why she did.~ + a5c
++ ~What did you do then?~ + a5d
END

IF ~~ THEN BEGIN a5a
SAY~Ah yes... The letter. That's merely one of many. I've had years to write them, after all. And Tamah is ever in my thoughts. That's one reason I'm heading out to the inn today. Today's the anniversary of her leaving me and I finally decided to do what she always wanted me to do--change my routine, face my fear, and go out for a drink in her memory.~
IF ~~ THEN + a5_01
END

IF ~~ THEN BEGIN a5b
SAY~Perhaps. But she was furious enough that she...ah...forgot to tell me where she was going. I had hoped that, with time, her anger would fade and she would at least write to me. That and writing letters to her helped me survive my grief at her loss. What you hold in your hands is merely one of many. I've had years to write them, after all. And Tamah is ever in my thoughts. That's one reason I'm heading out to the inn today. Today's the anniversary of her leaving me and I finally decided to do what she always wanted me to do--change my routine, face my fear, and go out for a drink in her memory.~
IF ~~ THEN + a5_01
END

IF ~~ THEN BEGIN a5c
SAY~I'm not surprised. Nor am I offended. I'm an old elf, <CHARNAME>. Time means little to me, generally speaking, and getting past three hundred has affected my view of the purpose of life. I met her when she was a young lass of eighteen, and couldn't understand how after only a decade and a half of work she would be desperate for change.~
IF ~~ THEN + a5_01
END

IF ~~ THEN BEGIN a5d
SAY~I handled my grief much the way you would expect a life-long scribe to do... I took out my pen and wrote.~
IF ~~ THEN + a5_01
END

IF ~~ THEN BEGIN a5_01
SAY~When Tamah left me, I was devastated. The only way I could keep myself from going insane was the write out all my feelings in letters. Then, it occurred to me that the books I copied would be leaving Candlekeep. That was the key to my plan. Tamah loves to read. If I could get just one of the books I've copied into her hands, I could communicate with her. You see, I... *cough.* I used to hide love notes in the books I gave to her when we were together. Wherever she is now, she might still recognize my work in a book and pick it up out of sentiment. She might use the book in the proper way and... POP! Out will fall a letter from me.~
++ ~But why not send the letters directly to her?~ + a6a
++ ~So why haven't you gone out and looked for her?~ + a6a
++ ~Sad story.~ + a6b
++ ~But she hasn't responded, has she?~ + a6_01
END

IF ~~ THEN BEGIN a6a
SAY~When Tamah left, she never said where she was going. And, coward that I was, I never could face how much more dangerous it is to leave these sturdy walls.~
IF ~~ THEN + a6_01
END

IF ~~ THEN BEGIN a6b
SAY~There are a lot of sad stories in the world, <CHARNAME>. I just didn't think that my love affair with Tamah would have such a tragic end. I mean, we shared a bed and spent much of our time together. She was the only one who could get me to go out of the Library and experience some of the beauties of the living world.~
IF ~~ THEN + a6_01
END

IF ~~ THEN BEGIN a6_01
SAY~I never anticipated that she would be gone so long without at least writing back. I figured that the books were likely to end up in someone's library... And libraries always attract scribes. Sooner or later, Tamah would at least visit a library if not work for one copying books. There's always work for scribes in noble houses. It may not seem the most straightforward of methods to contact her, but I...I had to make some effort. I had to do something to reach her...~
++ ~How can I help?~ + a7a
++ ~Well, I wish you luck, Camryn.~ + a7b
++ ~Don't look at me. I fetch and carry enough as it is. Besides... She'd be seventy by now--hardly an age for new beginnings.~ + a7c
END

IF ~~ THEN BEGIN a7a
SAY~It's kind of you to offer to help, <CHARNAME>, but Tamah left... Oh my! At least thirty years ago... Maybe more. I lose track of time so easily these days. I don't know that she's even still alive. Humans don't live very long, usually. On the other hand, she does have some elvish blood in her, so she might... No, I'm fooling myself. If she's still alive, she'd no doubt have a family and a completely different life.~
++ ~Come on, Camryn! I could at least take this letter with me when I leave. You never know... I might run into her or someone who knows her.~ + a8a
++ ~That's true. It would be a lucky break to find her still alive.~ + a7b
++ ~*Laugh.*~ + a7c
END

IF ~~ THEN BEGIN a8a
SAY~I don't think so, <CHARNAME>. It's not right for you to carry around such a...a personal note.~
IF ~~ THEN + a8a_01
END

IF ~~ THEN BEGIN a7b
SAY~I think I need more than luck. I would need a miracle. One that I seriously doubt you are capable of delivering.~
IF ~~ THEN + a8a_01
END

IF ~~ THEN BEGIN a7c
SAY~There was a time, <CHARNAME>, when I would have been offended by your lack of respect. But now...now I guess I am an 'old fiddle-faddle,' as Miss Imoen says.~
IF ~~ THEN + a8a_01
END

IF ~~ THEN BEGIN a8a_01
SAY~As I've said, the letter is mine. Let me take it... Oh! You.. you opened it?! Is your name Tamah? *blushes heavily*~
++ ~Ummm... It was like that already! Really!~ + a8b
++ ~What's the matter? You already admitted it's a love letter.~ + a8c
++ ~I didn't open it. It tore open by accident when Phlydia removed it from the book.~ + a8d
END

IF ~~ THEN BEGIN a8b
SAY~*Scowls.* I seriously doubt that. My seal is magically enhanced, so it could not have opened by itself. Besides: there are smudgy fingerprints all over this!~
IF ~~ THEN + a8b_01
END

IF ~~ THEN BEGIN a8c
SAY~There's a great difference between talking about a letter and having someone else actually reading what I meant for Tamah.~
IF ~~ THEN + a8b_01
END

IF ~~ THEN BEGIN a8d
SAY~Phlydia? *Raises an eyebrow.* She's a fine woman, but it would be wise not to imitate her in matters like this... Historians are always such busybodies!~
IF ~~ THEN + a8b_01
END

IF ~~ THEN BEGIN a8b_01
SAY~There is such a thing as respecting the privacy of someone else's letters, you know.~
++ ~I do!  I do respect privacy... usually... But this was just too tempting!~ + a9
++ ~It really was an accident, Sir!~ + a9
++ ~Er, you did know that placing the letters into the books would make people find them, eventually? I mean, wasn't that the purpose of placing them there?~  + a9
END

IF ~~ THEN BEGIN a9
SAY~Well, yes, but still... That is why I wrote Tamah's name and description *on the envelope*, young <CHARNAME>. So no one else would read it.~
++ ~Is that also why you put perfume on it and scribbled little hearts all over it?~ + a9a
++ ~You could have chosen boring paper instead of fine, pink linen, you know.~ + a9b
++ ~Come on, Camryn! Have you never been tempted to open up a letter... Particularly one that practically begs to be opened!~ + a9c
++ ~I assure you I didn't read it.~ + a9d
END

IF ~~ THEN BEGIN a9a
SAY~*Blushes.* That's HER perfume, <CHARNAME>. I work on copying books, as you well know. Sometimes I open one up to find letters and what not inside... which, in retrospect, explains the origin of my idea. But not only that. It was about one, two years after her departure, in which time I tried to locate her by asking newcomers whether they might have seen her - to no avail, as you can imagine.~
IF ~~ THEN + a9a_01
END

IF ~~ THEN BEGIN a9b
SAY~I hardly think that my choice of paper would... Oh, nevermind. I work on copying books, as you well know. Sometimes I open one up to find letters and what not inside... which, in retrospect, explains the origin of my idea. But not only that. It was about one, two years after her departure, in which time I tried to locate her by asking newcomers whether they might have seen her - to no avail, as you can imagine.~
IF ~~ THEN + a9a_01
END

IF ~~ THEN BEGIN a9c
SAY~Never. Well... Alright, you have a point. But I'm still not happy with the idea of you carrying it around with you! I work on copying books, as you well know. Sometimes I open one up to find letters and what not inside... which, in retrospect, explains the origin of my idea. But not only that. It was about one, two years after her departure, in which time I tried to locate her by asking newcomers whether they might have seen her--to no avail, as you can imagine.~
IF ~~ THEN + a9a_01
END

IF ~~ THEN BEGIN a9d
SAY~Well... Alright. You have been a good child these many years. I suppose it could have been Phlydia's doing. Thank you for returning the letter to me. You know, as a scribe, I think much of my life has been concerned with the creation and duplication of letters. Sometimes I open one of the Candlekeep Library books up and find letters and what not inside... Which, in retrospect, explains the origin of my idea to send out letters hidden in copies of the Library's books. It was about one, two years after her departure, in which time I tried to locate Tamah by asking newcomers whether they might have seen her--to no avail, as you can imagine.~
IF ~~ THEN + a9a_01
END

IF ~~ THEN BEGIN a9a_01
SAY~Then, one day, I opened one of the books that she had left behind, one she enjoyed reading, I mean, and I smelled her inside! I smelled her discreet perfume, and I imagined her wonderful hair, too, and in the rush of the moment heard her laugh...So the idea hit me: If I could find her in a book, why not make it so that she could find me in one, too? I figured she would have the need for money eventually, and working as a scribe would probably be the obvious choice. Either that, or a trusty fellow scribe would find the letter and pass it on. So I started to hide letters in the books I copied that I assumed would leave Candlekeep.~
++ ~Ah, so the perfume on this letter is your favorite, yes?~ + a10a
++ ~Such a sweet story!~ + a10b
++ ~I still think it's a pretty indirect method of finding her. I would have gone out and looked for her.~ + a10c
END

IF ~~ THEN BEGIN a10a
SAY~(sigh) Well, I guess I should have expected your disrespect. Mark my words, <CHARNAME>: one day you, too, will be in love and will find trinkets and perfume that appeal to you, too!~
IF ~~ THEN  + a10_01
END

IF ~~ THEN BEGIN a10b
SAY~*Looking intently at you.* I hope you're not being disrespectful. I am your elder, after all.~
IF ~~ THEN + a10_01
END

IF ~~ THEN BEGIN a10c
SAY~(sigh) If I had such boldness, <CHARNAME>, I doubt I would have even met Tamah in the first place. I probably would have been out... well, maybe not slaying dragons, but doing something that would have kept me far away from Candlekeep.~
IF ~~ THEN + a10_01
END

IF ~~ THEN BEGIN a10_01
SAY ~I will keep this letter, thank you. I'd rather you weren't running around with it. Where you're going, a lot of others might see it... No need to put more salt into the wound. It was nonsense to put it into this book, but at the time I copied it I didn't know it would never leave Candlekeep. *Sigh.* This was what? Twenty years ago...? You weren't even born yet!~
=~If you happen to run across her when you leave here, you can let her know where she might find the other ones... If she hasn't already. Oh! I almost forgot! I've got a little going-away present for you! This nice book bag! I never go anywhere without mine! Oh...and here's some gold to put in your pocket for your journey with Gorion... You might need it. And now... to go have my drink. Have a good day, <CHARNAME>.~
IF ~~ THEN DO ~TakePartyItem("TIC0SCRL") GiveItemCreate("TICAMBAG",Player1,0,0,0) GiveGoldForce(25) AddexperienceParty(50) EscapeArea()~ EXIT
END

// 2. Candlekeep Library, Fifth floor

IF ~Global("TICamryn","GLOBAL",4)~ THEN BEGIN b1
SAY~It is good to see you, <CHARNAME>. I really need to thank you.~
++ ~Are you okay, Camryn?~ DO ~IncrementGlobal("TICamryn","GLOBAL",1)~ + b1a
++ ~That... That creature!!~ DO ~IncrementGlobal("TICamryn","GLOBAL",1)~ + b1b
++ ~Lucky for you, Tamah knows how to handle a weapon!~ DO ~IncrementGlobal("TICamryn","GLOBAL",1)~ + b1c
END

IF ~~ THEN BEGIN b1a
SAY~Just a bit rattled, <CHARNAME>. Things have been becoming very, very strange here in Candlekeep. People you've known for your whole life say things to you that are completely out of character or fail to remember your birthday. I didn't understand... until that...that thing came at me!~
IF ~~ THEN + b1a_01
END

IF ~~ THEN BEGIN b1b
SAY~Yes. It's a doppleganger. I don't know why it's here, but I suspect it was meant to replace me. Its presence explains why some of the people around me--ones I have lived with for so long--seem strange.~
IF ~~ THEN + b1a_01
END

IF ~~ THEN BEGIN b1c
SAY~Yes... I was surprised when she arrived today. Delighted, as well, but mostly surprised. She's incredible. So much still the girl and yet now also a strong, self-assured woman! And hardly a day older than when I saw her last... I thought, once, that it would take a miracle for her to return... Well, now that miracle has happened.~
IF ~~ THEN + b1a_01
END

IF ~~ THEN BEGIN b1a_01
SAY ~Tamah and I plan to travel together to Baldur's Gate. We'll stop over at the best Inn we can afford and get to know each other again. And then? Who knows... Although, from the twinkle I yet see in her eyes when she looks at me, I suspect the future may well be delightful. As long as she's with me, my fear seems more...manageable.~
= ~I also wish to warn you, <CHARNAME>. There is danger here in Candlekeep--you've seen but a taste of it. I wouldn't trust anyone here. I don't know who is still unaffected and who is... *Shudder.* Take care, my young one. I hope both of us may meet again in safety and comfort. Farewell.~
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

// 3. Interjections

//Interjections

//Phlydia
INTERJECT %tutu_var%PHLYDI 2 TICamrynPhlydia1
== %tutu_var%PHLYDI IF ~~ THEN ~Hmmm! There's a bit of paper stuck in the spine of this book. I just noticed it when I pulled out some straw... Is this yours, <CHARNAME>? Oh, I see. It's addressed to Tamah Venustas. Let me just pull it gently out and... Oooops!! It tore. Oh my. This looks like the handwriting of Camryn the Scribe. Oh dear. It's a love-letter. Let me just fold it back together... Ummm, <CHARNAME>, I just saw Camryn by the Library stairs. Would you mind...~ DO ~GiveItemCreate("TIC0SCRL",Player1,0,0,0)~
END
++ ~*Sigh.* You want me to take it to him?~ DO ~SetGlobal("TICamryn","GLOBAL",1)~ + TICamLetA1
++ ~It's a love-letter? *Laugh.* I can't imagine that hermit ever coming out of his cave long enough to love anyone!~ DO ~SetGlobal("TICamryn","GLOBAL",1)~ + TICamLetB1
++ ~*Groan.* Do I have to? I've been running errands all day!~ DO ~SetGlobal("TICamryn","GLOBAL",1)~ + TICamLetC1

INTERJECT %tutu_var%PHLYDI 3 TICamrynPhlydia2
== %tutu_var%PHLYDI IF ~~ THEN ~Hmmm! There's a bit of paper stuck in the spine of this book. I just noticed it when I pulled out some straw... Is this yours, <CHARNAME>? Oh, I see. It's addressed to Tamah Venustas. Let me just pull it gently out and... Oooops!! It tore. Oh my. This looks like the handwriting of Camryn the Scribe. Oh dear. It's a love-letter. Let me just fold it back together... Ummm, <CHARNAME>, I just saw Camryn by the Library stairs. Would you mind...~ DO ~GiveItemCreate("TIC0SCRL",Player1,0,0,0)~
END
++ ~*Sigh.* You want me to take it to him?~ DO ~SetGlobal("TICamryn","GLOBAL",1)~ + TICamLetA2
++ ~It's a love-letter? *Laugh.* I can't imagine that hermit ever coming out of his cave long enough to love anyone!~ DO ~SetGlobal("TICamryn","GLOBAL",1)~ + TICamLetB2
++ ~*Groan.* Do I have to? I've been running errands all day!~ DO ~SetGlobal("TICamryn","GLOBAL",1)~ + TICamLetC1

APPEND %tutu_var%PHLYDI

IF ~~ THEN TICamLetA1
SAY ~I would want it back if I'd written it. Make sure you take it to him. You know, all of Camryn's friends thought he was too much of a loner to ever fall in love. When he met Tamah and then chose to bond with her, we were very surprised. They were very different personalities. And yet... yet... they were so much in love. You should ask Camryn about it... It's such a sad story.~
COPY_TRANS %tutu_var%PHLYDI 2
END

IF ~~ THEN TICamLetB1
SAY ~Oh, Camryn was in love once. Even a hermit has a heart. Gorion and I used to joke about Camryn being a bit of a cold fish because we never imagined that he would ever find anyone enough to his liking... When he met Tamah and then chose to bond with her, we were very surprised. They were very different personalities. And yet... yet... they were so much in love. You should ask Camryn about it... It's such a sad story.~
COPY_TRANS %tutu_var%PHLYDI 2
END

IF ~~ THEN TICamLetC1
SAY ~You would be doing me...and him...a favor if you would, <CHARNAME>. *Lowers her voice.* Camryn has been one of your staunchest supporters here, you know. When the Keeper of the Tomes didn't want you staying here, Camryn stood by your father and insisted that you be allowed to live in the safety of Candlekeep. He's always been fond of children, which is funny since Gorion and I used to joke about Camryn being a bit of a cold fish. We never imagined that he would ever find anyone enough to his liking... When he met Tamah... ahhhh... they were so much in love. You should ask Camryn about it... It's such a sad story.~
COPY_TRANS %tutu_var%PHLYDI 2
END

IF ~~ THEN TICamLetA2
SAY ~I would want it back if I'd written it. Make sure you take it to him. You know, all of Camryn's friends thought he was too much of a loner to ever fall in love. When he met Tamah and then chose to bond with her, we were very surprised. They were very different personalities. And yet... yet... they were so much in love. You should ask Camryn about it... It's such a sad story.~
COPY_TRANS %tutu_var%PHLYDI 3
END

IF ~~ THEN TICamLetB2
SAY ~Oh, Camryn was in love once. Even a hermit has a heart. Gorion and I used to joke about Camryn being a bit of a cold fish because we never imagined that he would ever find anyone enough to his liking... When he met Tamah and then chose to bond with her, we were very surprised. They were very different personalities. And yet... yet... they were so much in love. You should ask Camryn about it... It's such a sad story.~
COPY_TRANS %tutu_var%PHLYDI 3
END

IF ~~ THEN TICamLetC2
SAY ~You would be doing me...and him...a favor if you would, <CHARNAME>. *Lowers her voice.* Camryn has been one of your staunchest supporters here, you know. When the Keeper of the Tomes didn't want you staying here, Camryn stood by your father and insisted that you be allowed to live in the safety of Candlekeep. He's always been fond of children, which is funny since Gorion and I used to joke about Camryn being a bit of a cold fish. We never imagined that he would ever find anyone enough to his liking... When he met Tamah... ahhhh... they were so much in love. You should ask Camryn about it... It's such a sad story.~
COPY_TRANS %tutu_var%PHLYDI 3
END
END

// Tamah
INTERJECT %tutu_var%TAMAH 0 TICamrynTamah1
== %tutu_var%TAMAH IF ~~ THEN ~You are looking at me so oddly, stranger! I am Tamah, an adventurer. I ask again: who are you and what has happened to me?~
END
COPY_TRANS %tutu_var%TAMAH 0
+~Global("TICamryn","GLOBAL",3)~+ ~Tamah? That name is familiar to me... Yes... Are you Tamah, formerly of Candlekeep?~ + TIC3

EXTEND_BOTTOM %tutu_var%TAMAH 1
+~Global("TICamryn","GLOBAL",3)~+ ~I have a guess, actually. You wouldn't happen to be the Tamah who used to live in Candlekeep...?~ + TIC3
END

EXTEND_BOTTOM %tutu_var%TAMAH 2
+~Global("TICamryn","GLOBAL",3)~+ ~I'm sorry. That came out wrong. Your thanks is good enough. Say... you wouldn't happen to be the Tamah who used to live in Candlekeep, are you?~ + TIC3
END

EXTEND_BOTTOM %tutu_var%TAMAH 3
+~Global("TICamryn","GLOBAL",3)~+ ~No... I'm sorry. That's more than I can accept. Your freedom is good enough. Say... you wouldn't happen to be the Tamah who used to live in Candlekeep, are you?~ + TIC3
END

//We also need the quest variable, so we patch the transactions of the states 4 and 5:

//syntax: patch dlg "%tutu_var%TAMAH" state "5" reply options: "all" with the variable setting "SetGlobal("TITamah","GLOBAL",1)"

ADD_TRANS_ACTION %tutu_var%TAMAH BEGIN 5 END BEGIN END ~SetGlobal("TITamah","GLOBAL",1)~

//same for state 4

ADD_TRANS_ACTION %tutu_var%TAMAH BEGIN 4 END BEGIN END ~SetGlobal("TITamah","GLOBAL",1)~

APPEND %tutu_var%TAMAH
IF ~~ THEN TICamrynTamah6
SAY ~I...I probably shouldn't tell you this, but I shall be at Feldepost's Inn in Beregost. If you wish, I can at least buy you a drink.~
COPY_TRANS %tutu_var%TAMAH 6
END
END

ADD_TRANS_ACTION %tutu_var%TAMAH BEGIN TICamrynTamah6 END BEGIN END ~SetGlobal("TITamah","GLOBAL",1)~

APPEND %tutu_var%TAMAH

IF ~~ THEN BEGIN TIC3
SAY ~Yes, yes I am. Why?~
++ ~I happened to talk to an...err...old friend of yours. Camryn.~ + TIC3a
++ ~I...uh...have to tell you something about Camryn.~ + TIC3a
END

IF ~~ THEN BEGIN TIC3a
SAY~Oh dear. Camryn... Now I really wonder how long I've been stone. Camryn is...was a very special friend...at Candlekeep. When we parted, I hoped his feelings for me would change. He told me they wouldn't. Apparently he was right.~
IF ~~ THEN + TIC3a.para2.noletter
IF ~PartyHasItem("TIC0SCRL")~ THEN +  TIC3a.para2.letter
IF ~PartyHasItem("TIC1SCRL")~ THEN +  TIC3a.para2.letter
IF ~PartyHasItem("TIC2SCRL")~ THEN +  TIC3a.para2.letter
IF ~PartyHasItem("TIC3SCRL")~ THEN +  TIC3a.para2.letter
IF ~PartyHasItem("TIC4SCRL")~ THEN +  TIC3a.para2.letter
IF ~PartyHasItem("TIC5SCRL")~ THEN +  TIC3a.para2.letter
IF ~PartyHasItem("TIC6SCRL")~ THEN +  TIC3a.para2.letter
IF ~PartyHasItem("TIC7SCRL")~ THEN +  TIC3a.para2.letter
IF ~PartyHasItem("TIC8SCRL")~ THEN +  TIC3a.para2.letter
IF ~PartyHasItem("TIC9SCRL")~ THEN +  TIC3a.para2.letter
IF ~PartyHasItem("TIC10SCR")~ THEN +  TIC3a.para2.letter
IF ~PartyHasItem("TIC11SCR")~ THEN +  TIC3a.para2.letter
IF ~PartyHasItem("TIC12SCR")~ THEN +  TIC3a.para2.letter
IF ~PartyHasItem("TIC13SCR")~ THEN +  TIC3a.para2.letter
END

/* here are the custom endings. But we want to use the game's transactions (these are different for the different games, and also other mods might want to add to them, so we pass the dialogue back to state 4 (no doubling of dialogue, all needed transactions there, plus other mods can add to it, too.) */
IF ~~ THEN BEGIN TIC3a.para2.noletter
SAY ~Well, whatever it is you have to tell me can't be much more than I guess I should have expected. I've always heard Elves never take the breaking apart of a relationship very well. But I'd rather speak of this at Feldepost's Inn in Beregost. I think I'll need a drink.~
IF ~~ THEN + 4
END

IF ~~ THEN BEGIN TIC3a.para2.letter
SAY ~The expression on your face tells me that you do have a lot to tell me. If you don't mind, I'd rather speak of Camryn at Feldepost's Inn in Beregost. I think I'll need a drink.~
IF ~~ THEN + 4
END
END