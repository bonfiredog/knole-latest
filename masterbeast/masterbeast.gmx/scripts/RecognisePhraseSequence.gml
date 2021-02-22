///RecognisePhraseSequence(Word1,Word2,Word3...)

//Recognise a sequence of up to 16 phrases in a row.

NumberOfPhrases = argument_count
Activated = false

//If the first phrase is heard, activate the script.
if global.LastRecognisedPhrase = argument[0] and Activated = false {
CurrentPhrase = 1
PhraseTimer = 120
Activated = true
mCreatureController.NewPhrase = false
}

//Listen for the rest of the phrase.
if Activated = true {
if CurrentPhrase <= NumberOfPhrases {

//Constantly count down the timer.
PhraseTimer -= 1

//If the timer reaches zero before a new phrase has been spoken, reset and deactivate the script, ready to hear the first phrase again.
if PhraseTimer <= 0 and mCreatureController.NewPhrase = false {
Activated = false
}

//If the next new phrase recognised is the next in the sequence, reset the timer and begin listening for the next phrase. 
if mCreatureController.NewPhrase = true and global.LastRecognisedPhrase = argument[CurrentPhrase] {
PhraseTimer = 120
CurrentPhrase += 1
mCreatureController.NewPhrase = false

//However, if the next new phrase recognised is not the next in sequence, reset and deactivate the script, ready to hear the first phrase again.
} else if global.LastRecognisedPhrase != argument[CurrentPhrase] and mCreatureController.NewPhrase = true {
Activated = false
}

//If we reach the end of the phrase sequence without running out of time or saying the wrong word, the phrase is completed. We can return true, 
// and deactivate the script.
} else if CurrentPhrase > NumberOfPhrases {
Activated = false
return true
}

} 

