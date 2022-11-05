import std/strutils

let fileContents = readFile("story.txt")

let words = fileContents.split(" ")

echo words