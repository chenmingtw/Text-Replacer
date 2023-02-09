# Text Replacer
A bash script for replacing specific text in a text file.

## Usage
```
./text-replacer.sh file.txt target_text expected_text [target_text expected_text ...]
```
## Parameters
- file.txt: The text file to be modified.
- target_text: The target text to be replaced.
- expected_text: The text to replace the target text with.
Multiple target and expected text pairs can be provided.

## Description
The script replaces all instances of the target text in the text file with the expected text. The target and expected text can include special symbols and spaces. The script uses the sed command to perform the replacements, and the -i option is used to edit the file in place.

## Example
```
./text-replacer.sh file.txt "hello & world" "hi & universe" "ok; bye" "nice; farewell"
```
This will replace all instances of "hello & world" with "hi & universe" and all instances of "ok; bye" with "nice; farewell" in the file "file.txt".

## Output
The script outputs "Replacement completed successfully!" after the replacements have been made.
