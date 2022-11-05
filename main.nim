import std/strutils

let fileContents = readFile("story.txt")

let words = fileContents.split(" ")

var story = words

const partsOfSpeech = ["ADJECTIVE", "NOUN", "ADVERB", "VERB"]

for i in countup(0, words.len - 1):
    var word = words[i]

    if word in partsOfSpeech:
        echo "Enter a ", word, ": "
        word = readLine(stdin)
    story[i] = word


let newContents = story.join(" ")

writeFile("storyFilled.txt", newContents)
echo newContents