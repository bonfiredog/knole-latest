///LoadAudioEngine()

//1. Create the ex_audio object.
instance_create(x,y,obj_ex_audio)


//2. Create any ex_audio classes that are neeced.
ex_audio_class_create("breathingmouthinhealthy")
ex_audio_class_create("breathingmouthouthealthy")
ex_audio_class_create("breathingnoseinhealthy")
ex_audio_class_create("breathingnoseouthealthy")
ex_audio_class_create("breathingmouthinsick")
ex_audio_class_create("breathingmouthoutsick")
ex_audio_class_create("breathingnoseinsick")
ex_audio_class_create("breathingnoseoutsick")
ex_audio_class_create("slaps")
ex_audio_class_create("thunders")
ex_audio_class_create("eyefinishes")
ex_audio_class_create("crunches")
ex_audio_class_create("vocalisations")
ex_audio_class_create("weathers")
ex_audio_class_create("sneezes")
ex_audio_class_create("cuts")

//3. Load ex_audio sounds from base sounds, putting them into classes if needed.

ex_audio_load("binnose1h",aBreatheInNose1,"breathingnoseinhealthy",1)
ex_audio_set_falloff("binnose1h",1500,10000,1)
ex_audio_load("binnose2h",aBreatheInNose2,"breathingnoseinhealthy",1)
ex_audio_set_falloff("binnose2h",1500,10000,1)
ex_audio_load("binnose3h",aBreatheInNose3,"breathingnoseinhealthy",1)
ex_audio_set_falloff("binnose3h",1500,10000,1)
ex_audio_load("binmouth1h",aBreatheInMouth1,"breathingmouthinhealthy",1)
ex_audio_set_falloff("binmouth1h",1500,10000,1)
ex_audio_load("binmouth2h",aBreatheInMouth2,"breathingmouthinhealthy",1)
ex_audio_set_falloff("binmouth2h",1500,10000,1)
ex_audio_load("binmouth3h",aBreatheInMouth3,"breathingmouthinhealthy",1)
ex_audio_set_falloff("binmouth3h",1500,10000,1)
ex_audio_load("binmouth4h",aBreatheInMouth4,"breathingmouthinhealthy",1)
ex_audio_set_falloff("binmouth4h",1500,10000,1)
ex_audio_load("bonose1h",aBreatheOutNose1,"breathingnoseouthealthy",1)
ex_audio_set_falloff("bonose1h",1500,10000,1)
ex_audio_load("bonose2h",aBreatheOutNose2,"breathingnoseouthealthy",1)
ex_audio_set_falloff("bonose2h",1500,10000,1)
ex_audio_load("bonose3h",aBreatheOutNose3,"breathingnoseouthealthy",1)
ex_audio_set_falloff("bonose3h",1500,10000,1)
ex_audio_load("bomouth1h",aBreatheOutMouth1,"breathingmouthouthealthy",1)
ex_audio_set_falloff("bomouth1h",1500,10000,1)
ex_audio_load("bomouth2h",aBreatheOutMouth2,"breathingmouthouthealthy",1)
ex_audio_set_falloff("bomouth1h",1500,10000,1)
ex_audio_load("bomouth3h",aBreatheOutMouth3,"breathingmouthouthealthy",1)
ex_audio_set_falloff("bomouth3h",1500,10000,1)
ex_audio_load("bonose1s",aSniffIn1,"breathingnoseoutsick",1)
ex_audio_set_falloff("bonose1s",1500,10000,1)
ex_audio_load("bonose2s",aSniffIn2,"breathingnoseoutsick",1)
ex_audio_set_falloff("bonose2s",1500,10000,1)
ex_audio_load("bonose3s",aSniffIn3,"breathingnoseoutsick",1)
ex_audio_set_falloff("bonose3s",1500,10000,1)
ex_audio_load("bonose4s",aSniffIn4,"breathingnoseoutsick",1)
ex_audio_set_falloff("bonose4s",1500,10000,1)
ex_audio_load("bonose5s",aSniffIn5,"breathingnoseoutsick",1)
ex_audio_set_falloff("bonose5s",1500,10000,1)
ex_audio_load("bonose6s",aSniffIn6,"breathingnoseoutsick",1)
ex_audio_set_falloff("bonose6s",1500,10000,1)
ex_audio_load("binnose1s",aSniffIn1,"breathingnoseinsick",1)
ex_audio_set_falloff("binnose1s",1500,10000,1)
ex_audio_load("binnose2s",aSniffIn2,"breathingnoseinsick",1)
ex_audio_set_falloff("binnose2s",1500,10000,1)
ex_audio_load("binnose3s",aSniffIn3,"breathingnoseinsick",1)
ex_audio_set_falloff("binnose3s",1500,10000,1)
ex_audio_load("binnose4s",aSniffIn4,"breathingnoseinsick",1)
ex_audio_set_falloff("binnose4s",1500,10000,1)
ex_audio_load("binnose5s",aSniffIn5,"breathingnoseinsick",1)
ex_audio_set_falloff("binnose5s",1500,10000,1)
ex_audio_load("binnose6s",aSniffIn6,"breathingnoseinsick",1)
ex_audio_set_falloff("binnose6s",1500,10000,1)
ex_audio_load("binmouth1s",aBreatheInMouthRagged1,"breathingmouthinsick",1)
ex_audio_set_falloff("binmouth1s",1500,10000,1)
ex_audio_load("binmouth2s",aBreatheInMouthRagged2,"breathingmouthinsick",1)
ex_audio_set_falloff("binmouth2s",1500,10000,1)
ex_audio_load("bomouth1s",aBreatheOutMouthRagged1,"breathingmouthoutsick",1)
ex_audio_set_falloff("bomouth1s",1500,10000,1)
ex_audio_load("bomouth2s",aBreatheOutMouthRagged2,"breathingmouthoutsick",1)
ex_audio_set_falloff("bomouth2s",1500,10000,1)
ex_audio_load("bomouth3s",aBreatheOutMouthRagged3,"breathingmouthoutsick",1)
ex_audio_set_falloff("bomouth3s",1500,10000,1)

ex_audio_load("sniff1",aSniffInReal1)
ex_audio_set_falloff("sniff1",1500,10000,1)
ex_audio_load("sniff2",aSniffInReal2)
ex_audio_set_falloff("sniff2",1500,10000,1)
ex_audio_load("sniff3",aSniffInReal3)
ex_audio_set_falloff("sniff3",1500,10000,1)
ex_audio_load("sniff4",aSniffInReal4)
ex_audio_set_falloff("sniff4",1500,10000,1)
ex_audio_load("sniff5",aSniffInReal5)
ex_audio_set_falloff("sniff5",1500,10000,1)
ex_audio_load("sniff6",aSniffInReal6)
ex_audio_set_falloff("sniff6",1500,10000,1)

ex_audio_load("sneezebreath1",aSniffIn1)
ex_audio_set_falloff("sneezebreath1",1500,10000,1)
ex_audio_load("sneezebreath2",aSniffIn2)
ex_audio_set_falloff("sneezebreath2",1500,10000,1)
ex_audio_load("sneezebreath3",aSniffIn3)
ex_audio_set_falloff("sneezebreath3",1500,10000,1)

ex_audio_load("mmm",mMMM)

ex_audio_load("slap1",aSlap1,"slaps",1)
ex_audio_set_falloff("slap1",1500,10000,1)
ex_audio_load("slap2",aSlap2,"slaps",1)
ex_audio_set_falloff("slap2",1500,10000,1)
ex_audio_load("slap3",aSlap3,"slaps",1)
ex_audio_set_falloff("slap3",1500,10000,1)

ex_audio_load("hornpull",aHornPull)
ex_audio_set_volume("hornpull",0,1)
ex_audio_load("hornbreak",aHornRipOut)
ex_audio_set_falloff("hornpull",1500,10000,1)
ex_audio_set_falloff("hornbreak",1500,10000,1)
ex_audio_load("hornregrowleft",aHornRegrow)
ex_audio_load("hornregrowright",aHornRegrow)
ex_audio_load("hornwhistleleft",aEarWhistle)
ex_audio_load("hornwhistleright",aEarWhistle)
ex_audio_set_pitch("hornwhistleleft",random_range(1.4,1.6))
ex_audio_set_pitch("hornwhistleright",random_range(1.4,1.6))
ex_audio_set_falloff("hornregrowleft",200,500,1)
ex_audio_set_falloff("hornregrowright",200,500,1)
ex_audio_set_falloff("hornwhistleleft",200,500,1)
ex_audio_set_falloff("hornwhistleright",200,500,1)

ex_audio_load("earpull",aEarPull)
ex_audio_set_falloff("earpull",1500,10000,1)
ex_audio_set_pitch("earpull",0.8,0)
ex_audio_set_volume("earpull",0.01,0)
ex_audio_load("earbreak",aEarRipOut)
ex_audio_set_falloff("earbreak",700,10000,1)
ex_audio_load("earwhistleleft",aEarWhistle)
ex_audio_load("earwhistleright",aEarWhistle)
ex_audio_set_pitch("earwhistleleft",random_range(1.4,1.6))
ex_audio_set_pitch("earwhistleright",random_range(1.4,1.6))
ex_audio_set_falloff("hornwhistleleft",300,500,1)
ex_audio_set_falloff("hornwhistleright",300,500,1)

ex_audio_load("hairtouch",aHairRustleLoop)
ex_audio_set_falloff("hairtouch",1500,10000,1)
ex_audio_load("hairpull1",aHairPull1)
ex_audio_load("hairpull2",aHairPull2)
ex_audio_set_falloff("hairpull1",1500,10000,1)
ex_audio_set_falloff("hairpull2",1500,10000,1)

ex_audio_load("snip1",aSnip1)
ex_audio_load("snip2",aSnip2)
ex_audio_load("snip3",aSnip3)
ex_audio_set_falloff("snip1",1500,10000,1)
ex_audio_set_falloff("snip2",1500,10000,1)
ex_audio_set_falloff("snip3",1500,10000,1)

ex_audio_load("debugopen",aDebugOpen)
ex_audio_load("debugclose",aDebugClose)
ex_audio_set_volume("debugopen",1)
ex_audio_set_volume("debugclose",1)

ex_audio_load("wind",aWind,"weathers")
ex_audio_load("lightrain",aRain,"weathers")
ex_audio_load("heavyrain",aRain,"weathers")
ex_audio_load("hail",aHail,"weathers")

ex_audio_load("thunder1",aThunder1,"thunders")
ex_audio_load("thunder2",aThunder2,"thunders")
ex_audio_load("thunder3",aThunder3,"thunders")
ex_audio_load("thunder4",aThunder4,"thunders")
ex_audio_set_volume("thunder1",1,0)
ex_audio_set_volume("thunder2",1,0)
ex_audio_set_volume("thunder3",1,0)
ex_audio_set_volume("thunder4",1,0)

ex_audio_load("cutin",aCutIn, "cuts")
ex_audio_load("cutout",aCutOut, "cuts")
ex_audio_load("cut1",aCutLoop1, "cuts")
ex_audio_load("cut2",aCutLoop2, "cuts")
ex_audio_load("cut3",aCutLoop3, "cuts")
ex_audio_load("cut4",aCutLoop4, "cuts")
ex_audio_load("cut5",aCutLoop5, "cuts")

ex_audio_set_falloff("cutin",1500,10000,1)
ex_audio_set_falloff("cutout",1500,10000,1)
ex_audio_set_falloff("cut1",1500,10000,1)
ex_audio_set_falloff("cut2",1500,10000,1)
ex_audio_set_falloff("cut3",1500,10000,1)
ex_audio_set_falloff("cut4",1500,10000,1)
ex_audio_set_falloff("cut5",1500,10000,1)

ex_audio_load("clean",aCutLoop1)
ex_audio_set_falloff("clean",3000,10000,1)

ex_audio_load("bellsound",aBellSound)
ex_audio_set_falloff("bellsound",2000,8000,1)

ex_audio_load("cellarcut",aCutLoop5)
ex_audio_set_falloff("cellarcut",1500,10000,1)

ex_audio_load("cellarmove",aCutLoop4)
ex_audio_set_falloff("cellarmove",1500,10000,1)
ex_audio_set_volume("cellarmove",0.07,0)
ex_audio_play("cellarmove",1)
ex_audio_pause("cellarmove")

ex_audio_load("eyepondleft",aEyeLeftPond)
ex_audio_set_falloff("eyepondleft",150,400,1)
ex_audio_load("eyepondright",aEyeRightPond)
ex_audio_set_falloff("eyepondright",150,400,1)

ex_audio_load("skintouch",aRustleLoop)
ex_audio_set_falloff("skintouch",1500,10000,1)

ex_audio_load("twitch",aRustleLoop)
ex_audio_set_falloff("twitch",1500,10000,1)

ex_audio_load("twitchshort",aTwitchShort)
ex_audio_set_falloff("twitchshort",1500,10000,1)

ex_audio_load("liptouch",aLipTouch)
ex_audio_set_falloff("liptouch",1500,10000,1)
ex_audio_set_volume("liptouch",0,0)

ex_audio_load("drip1",aDrip1)
ex_audio_load("drip2",aDrip2)
ex_audio_load("drip3",aDrip3)
ex_audio_load("drip4",aDrip4)
ex_audio_load("drip5",aDrip5)
ex_audio_set_falloff("drip1",300,600,1)
ex_audio_set_falloff("drip2",300,600,1)
ex_audio_set_falloff("drip3",300,600,1)
ex_audio_set_falloff("drip4",300,600,1)
ex_audio_set_falloff("drip5",300,600,1)

ex_audio_load("eyefinish1",aEyeFinish1,"eyefinishes",1)
ex_audio_set_falloff("eyefinish1",200,400,1)
ex_audio_load("eyefinish2",aEyeFinish2,"eyefinishes",1)
ex_audio_set_falloff("eyefinish2",200,400,1)
ex_audio_load("eyefinish3",aEyeFinish3,"eyefinishes",1)
ex_audio_set_falloff("eyefinish3",200,400,1)
ex_audio_load("eyefinish4",aEyeFinish4,"eyefinishes",1)
ex_audio_set_falloff("eyefinish4",200,400,1)
ex_audio_load("eyefinish5",aEyeFinish5,"eyefinishes",1)
ex_audio_set_falloff("eyefinish5",200,400,1)

ex_audio_load("shiver",aShiver)
ex_audio_set_pitch("shiver",0.6,0)

ex_audio_load("cough1",aCough1)
ex_audio_load("cough2",aCough2)
ex_audio_load("cough3",aCough3)
ex_audio_load("cough4",aCough4)
ex_audio_set_falloff("cough1",1500,10000,1)
ex_audio_set_falloff("cough2",1500,10000,1)
ex_audio_set_falloff("cough3",1500,10000,1)
ex_audio_set_falloff("cough4",1500,10000,1)

ex_audio_load("crunch1",aCrunch1,"crunches")
ex_audio_load("crunch2",aCrunch2,"crunches")
ex_audio_load("crunch3",aCrunch3,"crunches")
ex_audio_load("crunch4",aCrunch4,"crunches")
ex_audio_load("crunch5",aCrunch5,"crunches")
ex_audio_load("crunch6",aCrunch6,"crunches")
ex_audio_load("crunch7",aCrunch7,"crunches")
ex_audio_load("crunch8",aCrunch8,"crunches")

ex_audio_load("longhigh1",aVocLongHighEnLoop1,"vocalisations")
ex_audio_load("longhigh2",aVocLongHighEnLoop2,"vocalisations")
ex_audio_load("longhigh3",aVocLongHighEnLoop3,"vocalisations")
ex_audio_load("longlow1",aVocLongLowEn1,"vocalisations")
ex_audio_load("longlow2",aVocLongLowEn2,"vocalisations")
ex_audio_load("longlow3",aVocLongLowEn3,"vocalisations")
ex_audio_load("longlow4",aVocLongLowEn4,"vocalisations")
ex_audio_load("longlow5",aVocLongLowEn5,"vocalisations")
ex_audio_load("longlow6",aVocLongLowEn6,"vocalisations")
ex_audio_load("longlow7",aVocLongLowEn7,"vocalisations")
ex_audio_load("longlow8",aVocLongLowEn8,"vocalisations")
ex_audio_load("shorthigh1",aVocShortHighEn1,"vocalisations")
ex_audio_load("shorthigh2",aVocShortHighEn2,"vocalisations")
ex_audio_load("shorthigh3",aVocShortHighEn3,"vocalisations")
ex_audio_load("shorthigh4",aVocShortHighEn4,"vocalisations")
ex_audio_load("shorthigh5",aVocShortHighEn5,"vocalisations")
ex_audio_load("shorthigh6",aVocShortHighEn6,"vocalisations")
ex_audio_load("shorthigh7",aVocShortHighEn7,"vocalisations")
ex_audio_load("shorthigh8",aVocShortHighEn8,"vocalisations")
ex_audio_load("shorthigh9",aVocShortHighEn9,"vocalisations")
ex_audio_load("shorthigh11",aVocShortHighEn11,"vocalisations")
ex_audio_load("shortlow1",aVocShortLowEn1,"vocalisations")
ex_audio_load("shortlow2",aVocShortLowEn2,"vocalisations")
ex_audio_load("shortlow3",aVocShortLowEn3,"vocalisations")
ex_audio_load("shortlow4",aVocShortLowEn4,"vocalisations")
ex_audio_load("shortlow5",aVocShortLowEn5,"vocalisations")
ex_audio_load("shortlow6",aVocShortLowEn6,"vocalisations")
ex_audio_set_falloff("vocalisations",500,5000,1)

mInterfaceController.BaseSoundPitch = 2.5

SetVocalFalloff(600,8000)

ex_audio_load("touchwet1",aTouchWet1)
ex_audio_set_falloff("touchwet1",1500,10000,1)
ex_audio_load("touchwet2",aTouchWet2)
ex_audio_set_falloff("touchwet2",1500,10000,1)
ex_audio_load("touchwet3",aTouchWet3)
ex_audio_set_falloff("touchwet3",1500,10000,1)

ex_audio_load("wetmouth1",aWetMouth1)
ex_audio_set_falloff("wetmouth1",1500,10000,1)
ex_audio_load("wetmouth2",aWetMouth2)
ex_audio_set_falloff("wetmouth2",1500,10000,1)
ex_audio_load("wetmouth3",aWetMouth3)
ex_audio_set_falloff("wetmouth3",1500,10000,1)
ex_audio_load("wetmouth4",aWetMouth4)
ex_audio_set_falloff("wetmouth4",1500,10000,1)
ex_audio_load("wetmouth5",aWetMouth5)
ex_audio_set_falloff("wetmouth5",1500,10000,1)
ex_audio_load("wetmouth6",aWetMouth6)
ex_audio_set_falloff("wetmouth6",1500,10000,1)
ex_audio_load("wetmouth7",aWetMouth7)
ex_audio_set_falloff("wetmouth7",1500,10000,1)

ex_audio_load("wettouch",aWetMouth1)
ex_audio_set_falloff("wettouch",1500,10000,1)

ex_audio_load("earclick",aEarClick)
ex_audio_set_falloff("earclick",1000,8000,1)

ex_audio_load("lowrumblesigil",aLowRumble)
//ex_audio_set_falloff("lowrumblesigil",1500,10000,1)

ex_audio_load("sigilloop",aSigilLoop)
ex_audio_set_falloff("sigilloop",1500,10000,1)

ex_audio_load("swallow",aSwallow1)
ex_audio_set_falloff("swallow",1500,10000,1)

ex_audio_load("cvibrate",aCaulVibrate)
ex_audio_set_falloff("cvibrate",200,400,1)
ex_audio_set_pitch("cvibrate",1.3,0)

ex_audio_load("clack1",aClack1)
ex_audio_set_falloff("clack1",1500,6000,1)
ex_audio_load("clack2",aClack2)
ex_audio_set_falloff("clack2",1500,6000,1)
ex_audio_load("clack3",aClack3)
ex_audio_set_falloff("clack3",1500,6000,1)
ex_audio_load("clack4",aClack4)
ex_audio_set_falloff("clack4",1500,6000,1)
ex_audio_load("clack5",aClack5)
ex_audio_set_falloff("clack5",1500,6000,1)
ex_audio_load("clack6",aClack6)
ex_audio_set_falloff("clack6",1500,6000,1)


ex_audio_load("sneeze1",aSneeze1,"sneezes")
ex_audio_set_falloff("sneeze1",1500,10000,1)
ex_audio_load("sneeze2",aSneeze2,"sneezes")
ex_audio_set_falloff("sneeze2",1500,10000,1)
ex_audio_load("sneeze3",aSneeze3,"sneezes")
ex_audio_set_falloff("sneeze3",1500,10000,1)
ex_audio_load("sneeze4",aSneeze4,"sneezes")
ex_audio_set_falloff("sneeze4",1500,10000,1)
ex_audio_load("sneeze5",aSneeze5,"sneezes")
ex_audio_set_falloff("sneeze5",1500,10000,1)
ex_audio_load("sneeze6",aSneeze6,"sneezes")
ex_audio_set_falloff("sneeze6",1500,10000,1)


ex_audio_load("cellarshake1",aCellarShake1)
ex_audio_set_falloff("cellarshake1",1500,10000,1)
ex_audio_load("cellarshake2",aCellarShake2)
ex_audio_set_falloff("cellarshake2",1500,10000,1)
ex_audio_load("cellarshake3",aCellarShake3)
ex_audio_set_falloff("cellarshake3",1500,10000,1)
ex_audio_load("cellarshake4",aCellarShake4)
ex_audio_set_falloff("cellarshake4",1500,10000,1)
ex_audio_load("cellarshake5",aCellarShake5)
ex_audio_set_falloff("cellarshake5",1500,10000,1)

ex_audio_load("alfill",aAlembickFill)
ex_audio_set_falloff("alfill",500,700,1)

ex_audio_load("splash1",aWaterPloip1)
ex_audio_load("splash1",1500,10000,1)
ex_audio_load("splash2",aWaterPloip2)
ex_audio_load("splash2",1500,10000,1)
ex_audio_load("splash3",aWaterPloip3)
ex_audio_load("splash3",1500,10000,1)
ex_audio_load("splash4",aWaterPloip4)
ex_audio_load("splash4",1500,10000,1)
ex_audio_load("splash5",aWaterPloip5)
ex_audio_load("splash5",1500,10000,1)
ex_audio_load("splash6",aWaterPloip6)
ex_audio_load("splash6",1500,10000,1)

ex_audio_load("lowrumblezoom",aLowRumble)
ex_audio_set_falloff("lowrumblezoom",1500,10000,1)

ex_audio_load("lowrumblerf",aLowRumble)
ex_audio_set_falloff("lowrumblerf",1500,10000,1)
ex_audio_load("lowrumblerf2",aLowRumble2)
ex_audio_set_falloff("lowrumblerf2",3000,10000,1)
ex_audio_set_volume("lowrumblerf2",2,0)

ex_audio_load("movebp",aMoveBodyPart)
ex_audio_set_falloff("movebp",1500,10000,1)
ex_audio_set_volume("movebp",0.01)

ex_audio_load("oloop1",aOrganicMoveLoop1)
ex_audio_set_falloff("oloop1",1500,10000,1)
ex_audio_load("oloop2",aOrganicMoveLoop2)
ex_audio_set_falloff("oloop2",1500,10000,1)
ex_audio_load("oloop3",aOrganicMoveLoop3)
ex_audio_set_falloff("oloop3",1500,10000,1)

ex_audio_load("cankerpull1",aOrganicMoveLoop1)
ex_audio_set_falloff("cankerpull1",1500,10000,1)
ex_audio_load("cankerpull2",aOrganicMoveLoop2)
ex_audio_set_falloff("cankerpull2",1500,10000,1)



//4.Set the default listener position.
ex_audio_listener_set_position(
view_xview[mInterfaceController.CurrentViewNumber] + (view_wview[mInterfaceController.CurrentViewNumber] / 2),
view_yview[mInterfaceController.CurrentViewNumber] + (view_hview[mInterfaceController.CurrentViewNumber] / 2),
1
)

