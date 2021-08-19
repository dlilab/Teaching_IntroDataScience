---
title: "Shell commands"
author: "Daijiang Li"
date: '2021-08-18'
slug: shell-commands
categories: []
tags: []
---


Here are a small list of some useful command that can be helpful in our daily work.

## Basic system commands

+ `/` is the root directory if at the beginning.
+ `.` means current directory.
+ `..` means one level up of current directory, i.e. parent directory.
+ `~` is the shortcut of the home directory. e.g. `cd ~`, same effect as `cd`; `~/data` equals with `/home/user/data`
+ `$` the command line is ready. Also, if you want to use the value of a variable in a command, precede its name by `$`, e.g. `echo $PATH`.
+ `#` comments, things after this will be ignored.
+ `cd Documents` to change to the Documents sub-folder.
+ `cd` to change to your home directory.
+ `cd ..` to change to the parent directory.
+ `cd -` to go back to previous directory.
+ `tab` to autocomplete, e.g. `cd b<tab>` will autocomplete the directory name begin with `b` (if it exits).
+ `pwd` to print the path of the current working directory.
+ `ln -s` creates symbolic links. `ln -s Documents Docs`. Then Docs -> Documents.
+ `ls -l` reveal where a symlink points and permission info. e.g. Docs -> Documents in the above example. `-S` sort files by size, `-F` means flag, add / at the end of directories. `-R` lists the contents of directories recursively.
+ `ls /bin/*[ab]* ` list all files in /bin that contain the letter a or b. It is equal with `ls /bin/*a* /bin/*b*`.
+ `ls *.[cho]` = `ls *.{c,h,o}`, list all files with .c, .h, .o in current directory.
+ `echo b{ed,olt,ar}s`, print beds, bolts, bars. `echo {2..5}` will print 2,3,4,5. `echo {d..h}` will print d,e,f,g,h.
+ `man command` to check what a command does. e.g. `man ls`. Press `q` to quit. `man` use `less` internal, so you can use `/` to search for something.
+ `history` to check all command used.
+ `!220` to rerun the 220th command from history
+ `|` is used for piping, i.e. use output of one command as input of another. e.g. `wc -l file1 file2 | sort | head -1` counts lines of file, then sorts the lines then print the first line of the result.
	* sometimes the command you want to pipe does not work. For example, `find . -name '*.c' | rm` won't work since `rm` only takes its filenames as arguments or parameters on the command line. We need to use `rm $(find . -name '*.c')` to get it work. `$()` encloses a command that is run in a subshell, the output for that command is substituted in place of the `$()` phrase. Some old syntax also use backticks to do the trick. Or you can use `find . -name '*.c' | xargs rm`.
+ `Ctrl+d` will send "end of file' and will often terminate the shell.
+ `ls /bin/*sh` will list all shells available.
+ `df -h` to get the disk of file system used (short of disk free?), `-h` means return human readable numbers, e.g. 100Mb. 100Gb.
+ `du -hs /path/to/directory` get the total size of the directory. `du` means disk usage, `-h` as above, `-s` means summary.
	* If only want to have a look at folders within current directory, use `du -h --max-depth=1 .`.
+ `env` to view the current values of environment variables.
+ `PATH` the environment path of a program. e.g. `echo $PATH` will print a list of places the shell will ONLY look for a program to run.
+ `which` print the location of a program. e.g. `which ls`.
+ `uname -a` print the system information.
+ `lsb_release -a` print Linux standard base distribution-specific information.
+ `finger` to check users inthe system. You may need to install finger first.
+ `'` strong quote,  e.g. `echo '2 * 3 > 5 is a valid inequality'`. No characters in single quote will be interpreted. When in doubt, use single quote unless a string contains a variable, in which case you should use double quotes.
+ `"` week quote, some characters will still be interpreted within double quote, e.g. `$` within `echo "$PATH"`. In this case the varaible PATH was evaluated.
+ `\` backslash-escaping the character (i.e. quote it). e.g. `echo 2 \* 3 \> 5 is a valid inequality`. If you put it at the end of a line, it means that the line continues.


## File related commands

+ `command > file` dump the standard output into a file. e.g. `pwd > pwd.txt`, then you can use `cat pwd.txt` to have a look at the file. `>` will create a file if it does not exit or rewrites a file if it already exits. `>>` will append to an exist file instead of rewrite it.
+ `command < input` e.g. `wc < file1`. This tells the computer that the input of `wc` is `file1`. This actually equals to `wc file1`.
+ `mkdir /tmp/user` will create a new directory named as user. All files in `/tmp` will be deleted after computer shutdown.
+ `rmdir /tmp/user` to remove a directory. If the directory is not empty, this will not work. Instead use `-r` option, which means "recursive", if you are sure that you want to remove all files inside the directory.
+ `cat day1.R` have a look at a text file in within the current directory, e.g. day1.R. You can also use `cat day1.R day2.R` to print two files. `cat day*` will print all files begin with day. You can also use `cat day* > all.R` to save all files into one file.
+ `cat filefolder/*` print the contents of all of the files in the filefolder directory.
+ `wc file1 file2` counts the number of lines (`-l`), words (`-w`) and characters (`-m`) in files.
+ `sort file` to sort a file.
+ `uniq file` to delete replicated *neighbor* lines.
+ `head -5 file` print the first 5 lines of file.
+ `tail -5 file` print the last 5 lines of file.
+ `less day1.R` only read a few part of day1.R. Press `q` to quit the reading, `space` to go forward, `b` to go backward, `g` to go to the begining, `G` to go to the end, `/` to search a word, but only forwardly.
+ `cp file file_backup` copy a file.
+ `mv file_backup /tmp/user` move the file into the /tmp/user directory.
+ `mv file_backup file_backup_important` to rename a file.
+ `mv */* dire` move all files in each directory into one directory ('dire' here).
+ `rm file` to delete a file. By default, `rm` cannot delete a directory. In order to delete a directory and its conten, use `rm -r foo` where foo is a directory.
+ `colrm start end` remove columns of file. A column is a character.
+ `read` takes a line from the standard input and breaks it down into words delimited by any characters in the value of the environment variable **IFS**. The words are assigned to variables *var1*, *var2*, etc. 
  	* On the other hand, it implies line-by-line processing, just like pipeline, but `read` is much slower. `while` loop read each line of the input into a variablesta. One example can be found at [here](http://stackoverflow.com/questions/23660233/grep-in-shell-does-not-work-as-expected/23661207#23661207):
  		
  		```bash
  		while (read a line) do  
  			proess the line  
  			print the processed line  
  		end
+ `grep` stands for *global/regular expression/print*. It finds lines in a file.
	* `grep -n pattern file` `-n` will number lines found.
	* `man grep` for more options. e.g. `-i` matching case-insensive, `-V` inverts the match.
+ `find` find files based on arbitrary criteria.
	* `find . -print` prints all file and directory in current directory (`.`).
	* `find . -type f -print` only prints files, no directory.
	* `find . -type d -print` only prints directories, not files.
	* `find . -type f -name "*1*"` find files whose names have 1.
	* `find . -type f -name "*1*" -or -name "*2*" -print` names have 1 or 2.
	* `find . -type f -name "*1*" -and -name "*2*" -print` names have 1 and 2.
	* `find . -type f -print | xargs grep Volume` print volume line of each file. `grep Volume $(find . -type f -print)` is another way.
	* `find . -name "*NOTES*" | xargs rm` delete files whose names are NOTES. `rm $(find . -name "*NOTES*" )` is another way.
	* `find . -type f -exec mv {} {}.txt \;` add all files with .txt at the end.
	* `find . -type f -not -name "*.txt" -exec mv {} {}.txt \;` match all files do not end with .txt and then add .txt to their names.
    * `find . -name "*.txt" | sed "s/\.txt$//" | xargs -i echo mv {}.txt {}.md | sh` rename all \*.txt as \*.md. Only works for GNU xargs.
+ `fdupes -d -r path/to/dire` to find and deal with duplicated files within a directory. You may need to `sudo apt-get install fdupes`.
+ `fdupes -r path/to/dire > dup.txt` to save all results in a txt file.


## Loops
  
  ```bash
	for filename in *.txt
	do 
		# examples:
		echo $filename                   # print file names
		head -3 $filename 
	    head -100 $filename | tail -20   # print 81-100 lines for each file
		echo mv $filename prefix-$filename
		mv $filename prefix-$filename    # rename each file
		bash programname  $filename out-$filename
										 # run programname on each file
	done
  ```
  
If file names have space in some of them, put `$filename` in quote to avoid problems. But the best way is to avoid putting space in any file names. If you are not sure about the commands you are using, put `echo mv $filename prefix-$filename` between `do` and `done` to check it.

## Moving cursor inside bash

+ `^` means `Ctrl` key, e.g. `^A` means `Ctrl+A`.
+ `^A` move to the beginning of a line in the shell.
+ `^E` move to the end of a line.
+ `^C` cancel what you are doing. If it does not work, try `^\`.
+ `^D` end of a line.
+ `^L` clean the screen of your shell.
+ `^h` delete back one character (backspace).
+ `^w` delete back one word.
+ `^u` delete back to the start of line.
 

## Shell scripts

Example: put `head -20 file.txt | tail -5` in a file *command.sh*; put `head $2 $1 | tail ${3:-10}` in a file *command2.sh*; put `wc -l $* | sort -n` in a file *command3.sh*;

+ `shell scripts` a bunch of commands saved in a file.
+ `bash command.sh` will run the commands saved in file *command.sh*.
+ `bash command2.sh filename.txt -20 -5` can specify filenames and lines. `$1` means the first parameter on the command line, etc. If `bash command2.sh filename.txt -20`, `:-` will give the last 10 lines.
+ `bash command3.sh *.txt backup/*.txt` will sort and list all files specified. `$*` means all parameters on the command line.
+ `bash command3.sh` will use stdin (i.e input from the command line) as input.
+ `history | tail -4 | colrm 1 7 > useful.sh` will save your last 4 commands into *useful.sh* so you can recycle them later.

## Remote

+ `scp filename user@server:filenameYouWant` on your local terminal to send local file to remote server. `scp filename user@server:.` if you do not want  to rename the file.youwant.
+ `scp user@server:filename local.filename` copy file from remote server into local machine.
+ `ssh -Y user@server` to connect a remote server.

## Alias
You can define a shortcut for some long cryptic commands by using alias: (NO space on either side of the equal sign. This rule also applies for variables, `varname=value` you can delete it with `unset varname`.)

	`alias name=command`
	`alias` get the list of alias you defined. 

## Misc

+ `sudo apt-get install --only-upgrade r-base-dev` to upgrade (only) R to the latest version.
+ `echo $GDMSESSION` check the OS info. In my machine, it returns *Lubuntu*.
+ `echo $XDG_CURRENT_DESKTOP` check the desktop window manager. My is *LXDE*.
+ `sudo pkill -u username` to force log out.
+ `.bash_profile` is used for login shell, while `.bashrc` is used for sub-shell, i.e. run from `bash` command. If you put your definitions in `.bashrc` you need to put `source .bashrc` in your `.bash_profile` to make them available for login shell.
+ `$@` is equal to `"$1"`, `"$2"`, ..., `"$N"` where N is the number of positional parameters. If there are no positional parameters, it expands to nothing. `$#` will tell you how many parameters you have.


## Reference

+ [Software carpentry](http://software-carpentry.org/v5/novice/shell/)
+ [Software carpentry UW-Madison](https://github.com/UW-Madison-ACI/boot-camps/blob/2014-01-uwmadison/shell/Readme.md)
+ [A good free book about unix commands](http://seankross.com/the-unix-workbench/), especially Chapter 5 about Bash programming
