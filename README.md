A quick batch script to help with taking notes in the upcoming semester :)
Add the batch file to your path and start taking notes !

Will create a new markdown file in a specified location. Creates a new heading each time you launch it:
* If the file _does not_ already exist, then the heading looks like: DAY xx/xx/xxxx | `[filename]`
* If the file _does_ already exist, then the heading is appended to the original file, and looks like: DAY xx/xx/xxxx

SYNTAX: `notes [filename] [class]`

`[filename]`: The name of the file that is going to be created
`[class]`: subfolder of some folder which is specified in the script (`VAR_PATH`) indicating what class these notes are for


`notes help` will launch a splash screen to help you with the syntax if you ever forget




**EXAMPLE**
`notes aphrodite clas470` will create a markdown file at `%VAR_PATH%\clas470` called aphrodite.md






Inspired by [this project](https://www.youtube.com/watch?v=pADvJUafZZc)
