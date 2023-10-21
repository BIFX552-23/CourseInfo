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
