# Intro to Snakemake

## Instructions

* Create a new repository in the course organization on GitHub titled `<github username>-Snakemake`.
* Add the following files to your repository:
  * REAME.md - Include a title and a sentence or two describing your repository.
  * Snakefile - This should have the four rules covered in the videos below. In the last video we will modify the `trimreads` rule. You may choose to use either cutoff (20 or 22).
* Intro to Snakemake videos:
  * Setup (also see setup notes below)
  * Running commands with Snakemake
  * Placeholders and wildcards
  * Chaining rules
  * How Snakemake plans what jobs to run
* Post a link to your repository here on Blackboard.

### Setup

You will need a terminal again for this lesson, along with some software. As with last week's lesson, you have a few options on how to proceed. You only need to pick one option - I would recommend either the Docker or Hood cluster options.

#### Docker

You may use Docker if you would like. The command for starting up Docker is

```
docker run -it --rm --mount type=bind,source="$(pwd)",target=/root/loc johnsonra/snakemake
```

If that doesn't work (Windows computers may not like the `$(pwd)` part of the command), specify the entire path to the location of your repository on your laptop:

```
docker run -it --rm --mount type=bind,source="C:\Path\to\your\repository",target=/root/loc johnsonra/snakemake
```

The videos recommend using the `--rm` tag. I'll be revising that convention in the videos for Advanced Snakemake to reuse an existing container as we did in class this week. You may do that for this lesson as well if you are comfortable with deviating from the videos a little. Otherwise you can stick with the videos.

### Hood cluster

If you choose to work on the Hood cluster (see login instructions), you may need to run the following commands to set up your environment.

* Run this command *one time*, log out and then connect again:

```
/BIODATA/programs/mambaforge/bin/conda init bash
```

* Run this command *every time you log in* when you want to use Snakemake:

```
/BIODATA/programs/mambaforge/bin/conda activate snakemake_carpentry
```

### Local installation

If you would like to work locally, you may follow [these setup instructions](https://carpentries-incubator.github.io/snakemake-novice-bioinformatics/setup.html) provided by the Software Carpentry authors.
