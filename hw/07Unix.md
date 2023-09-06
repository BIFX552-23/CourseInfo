# The Unix Shell

### Instructions

* Watch the following videos and answer the questions below:
  * Introducing the shell
  * Navigating files and directories
  * Working with files and directories
  * Pipes and filters
  
### Problems

#### [Navigating Files and Directories](https://swcarpentry.github.io/shell-novice/instructor/02-filedir.html)

1. You can also use two options at the same time. What does the command `ls` do when used with the `-l` option? What about if you use both the `-l` and the `-h` option? Some of its output is about properties that we do not cover in this lesson (such as file permissions and ownership), but the rest should be useful nevertheless.

2. By default, `ls` lists the contents of a directory in alphabetical order by name. The command `ls -t` lists items by time of last change instead of alphabetically. The command `ls -r` lists the contents of a directory in reverse order. Which file is displayed last when you combine the `-t` and `-r` options? Hint: You may need to use the `-l` option to see the last changed dates.

3. Starting from `/Users/nelle/data`, which of the following commands could Nelle use to navigate to her home directory, which is `/Users/nelle`?

  * `cd .`
  * `cd /`
  * `cd /home/nelle`
  * `cd ../..`
  * `cd ~`
  * `cd home`
  * `cd ~/data/..`
  * `cd`
  * `cd ..`

4. Using the [filesystem diagram below](https://swcarpentry.github.io/shell-novice/fig/filesystem-challenge.svg), if `pwd` displays `/Users/thing`, what will `ls -F ../backup` display?

  * `../backup: No such file or directory`
  * `2012-12-01 2013-01-08 2013-01-27`
  * `2012-12-01/ 2013-01-08/ 2013-01-27/`
  * `original/ pnas_final/ pnas_sub/`

5. Using the filesystem diagram below (same as above), if `pwd` displays `/Users/backup`, and `-r` tells `ls` to display things in reverse order, what command(s) will result in the following output: `pnas_sub/ pnas_final/ original/`

  * `ls pwd`
  * `ls -r -F`
  * `ls -r -F /Users/backup`

#### [Working with Files and Directories](https://swcarpentry.github.io/shell-novice/instructor/03-create.html)

1. We have seen how to create text files using the `nano` editor. Now, try the following command: `touch my_file.txt`

  * What did the `touch` command do? When you look at your current directory using the GUI file explorer, does the file show up?
  * Use `ls -l` to inspect the files. How large is `my_file.txt`?
  * When might you want to create a file this way?

2. After running the following commands, Jamie realizes that she put the files `sucrose.dat` and `maltose.dat` into the wrong folder. The files should have been placed in the `raw` folder.

```
$ ls -F
 analyzed/ raw/
 
$ ls -F analyzed
fructose.dat glucose.dat maltose.dat sucrose.dat

$ cd analyzed
```

Fill in the blanks to move these files to the raw/ folder (i.e. the one she forgot to put them in)

```
$ mv sucrose.dat maltose.dat ____/____
```

3. Suppose that you created a plain-text file in your current directory to contain a list of the statistical tests you will need to do to analyze your data, and named it `statstics.txt`. After creating and saving this file you realize you misspelled the file name! You want to correct the mistake, which of the following commands could you use to do so?

  * `cp statstics.txt statistics.txt`
  * `mv statstics.txt statistics.txt`
  * `mv statstics.txt .`
  * `cp statstics.txt .`

4. What is the output of the closing `ls` command in the sequence shown below?

```
$ pwd
/Users/jamie/data

$ ls
proteins.dat

$ mkdir recombined

$ mv proteins.dat recombined/

$ cp recombined/proteins.dat ../proteins-saved.dat

$ ls
```

  * `proteins-saved.dat recombined`
  * `recombined`
  * `proteins.dat recombined`
  * `proteins-saved.dat`

5. What happens when we execute `rm -i thesis_backup/quotations.txt`? Why would we want this protection when using `rm`?

6. For this exercise, you can test the commands in the `shell-lesson-data/exercise-data` directory.

  * In the example below, what does `cp` do when given several file names and a directory name?

```
$ mkdir backup

$ cp creatures/minotaur.dat creatures/unicorn.dat backup/
```

  * In the example below, what does `cp` do when given three or more file names?

```
$ cd creatures

$ ls -F
basilisk.dat  minotaur.dat  unicorn.dat

$ cp minotaur.dat unicorn.dat basilisk.dat
```

7. When run in the `alkanes` directory, which ls command(s) will produce this output? `ethane.pdb methane.pdb`

  * `ls *t*ane.pdb`
  * `ls *t?ne.*`
  * `ls *t??ne.pdb`
  * `ls ethane.*`
  
8. You’re starting a new experiment and would like to duplicate the directory structure from your previous experiment so you can add new data.

Assume that the previous experiment is in a folder called `2016-05-18`, which contains a data folder that in turn contains folders named raw and processed that contain data files. The goal is to copy the folder structure of the `2016-05-18` folder into a folder called `2016-05-20` so that your final directory structure looks like this:

```
2016-05-20/
└── data
   ├── processed
   └── raw
```

Which of the following set of commands would achieve this objective?

```
$ mkdir 2016-05-20
$ mkdir 2016-05-20/data
$ mkdir 2016-05-20/data/processed
$ mkdir 2016-05-20/data/raw
```

```
$ mkdir 2016-05-20
$ cd 2016-05-20
$ mkdir data
$ cd data
$ mkdir raw processed
```

```
$ mkdir 2016-05-20/data/raw
$ mkdir 2016-05-20/data/processed
```

```
$ mkdir -p 2016-05-20/data/raw
$ mkdir -p 2016-05-20/data/processed
```

```
$ mkdir 2016-05-20
$ cd 2016-05-20
$ mkdir data
$ mkdir raw processed
```

#### [Pipes and Filters](https://swcarpentry.github.io/shell-novice/instructor/04-pipefilter.html)

1. The file `shell-lesson-data/exercise-data/numbers.txt` contains the following lines:

```
10
2
19
22
6
```

If we run `sort` on this file, the output is:

```
10
19
2
22
6
```

If we run `sort -n` on the same file, we get this instead:

```
2
6
10
19
22
```

Explain why `-n` has this effect.

2. We have seen the use of `>`, but there is a similar operator >> which works slightly differently. We’ll learn about the differences between these two operators by printing some strings. We can use the `echo` command to print strings e.g.

```
$ echo The echo command prints text
The echo command prints text
```

Now test the commands below to reveal the difference between the two operators:

```
$ echo hello > testfile01.txt

$ echo hello >> testfile02.txt
```

Hint: Try executing each command twice in a row and then examining the output files.

3. We have already met the `head` command, which prints lines from the start of a file. `tail` is similar, but prints lines from the end of a file instead.

Consider the file `shell-lesson-data/exercise-data/animal-counts/animals.csv`. After these commands, select the answer that corresponds to the file `animals-subset.csv`:

```
$ head -n 3 animals.csv > animals-subset.csv
$ tail -n 2 animals.csv >> animals-subset.csv
```

  * The first three lines of `animals.csv`
  * The last two lines of `animals.csv`
  * The first three lines and the last two lines of `animals.csv`
  * The second and third lines of `animals.csv`

4. In our current directory, we want to find the 3 files which have the least number of lines. Which command listed below would work?

  * `wc -l * > sort -n > head -n 3`
  * `wc -l * | sort -n | head -n 1-3`
  * `wc -l * | head -n 3 | sort -n`
  * `wc -l * | sort -n | head -n 3`

5. A file called `animals.csv` (in the `shell-lesson-data/exercise-data/animal-counts` folder) contains the following data:

```
2012-11-05,deer,5
2012-11-05,rabbit,22
2012-11-05,raccoon,7
2012-11-06,rabbit,19
2012-11-06,deer,2
2012-11-06,fox,4
2012-11-07,rabbit,16
2012-11-07,bear,1
```

What text passes through each of the pipes and the final redirect in the pipeline below? Note, the `sort -r` command sorts in reverse order.

```
$ cat animals.csv | head -n 5 | tail -n 3 | sort -r > final.txt
```

Hint: build the pipeline up one command at a time to test your understanding

6. For the file `animals.csv` from the previous exercise, consider the following command:

```
$ cut -d , -f 2 animals.csv
```

The `cut` command is used to remove or ‘cut out’ certain sections of each line in the file, and `cut` expects the lines to be separated into columns by a `[Tab]` character. A character used in this way is a called a **delimiter**. In the example above we use the `-d` option to specify the comma as our delimiter character. We have also used the `-f` option to specify that we want to extract the second field (column). This gives the following output:

```
deer
rabbit
raccoon
rabbit
deer
fox
rabbit
bear
```

The `uniq` command filters out adjacent matching lines in a file. How could you extend this pipeline (using `uniq` and another command) to find out what animals the file contains (without any duplicates in their names)?

7. The file `animals.csv` contains 8 lines of data formatted as follows:

```
2012-11-05,deer,5
2012-11-05,rabbit,22
2012-11-05,raccoon,7
2012-11-06,rabbit,19
...
```

The `uniq` command has a `-c` option which gives a count of the number of times a line occurs in its input. Assuming your current directory is `shell-lesson-data/exercise-data/animal-counts`, what command would you use to produce a table that shows the total count of each type of animal in the file?

  * `sort animals.csv | uniq -c`
  * `sort -t, -k2,2 animals.csv | uniq -c`
  * `cut -d, -f 2 animals.csv | uniq -c`
  * `cut -d, -f 2 animals.csv | sort | uniq -c`
  * `cut -d, -f 2 animals.csv | sort | uniq -c | wc -l`

8. Suppose you want to delete your processed data files, and only keep your raw files and processing script to save storage. The raw files end in `.dat` and the processed files end in `.txt`. Which of the following would remove all the processed data files, and only the processed data files?

  * `rm ?.txt`
  * `rm *.txt`
  * `rm * .txt`
  * `rm *.*`
