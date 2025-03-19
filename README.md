# pre-hackathon_training
Materials for nf-core preh-hackathon training KEMRI-wellcome Trust Program site


### Schedule

|Date/Time|Topic|
|:---|:---|
|Mar 03, 4:00pm  - 5:00pm| Introduction to nextflow |
|Mar 05, 3:00pm  - 4:30pm| Channels and processes|
|Mar 10, 4:00pm  - 5:00pm| Workflow and operators |
|Mar 12, 3:00pm - 4:00pm| Reporting and config files|
|Mar 17, 4:00pm - 5:00pm| Worflow caching and checkpointing | 
|Mar 19, 3:00pm - 4:00pm| Hands on: A simple nextflow pipeline |

- [Meeting Link](https://teams.microsoft.com/l/meetup-join/19%3ameeting_ZDExYjM2ZjctNDZjZC00OTllLTliOWEtNjg3N2I0MDc4ZTBk%40thread.v2/0?context=%7b%22Tid%22%3a%22a5c0a820-c887-4727-ac66-403237d8c389%22%2c%22Oid%22%3a%220dc066b2-a745-4e0a-815c-ef76758bfc18%22%7d)
### Day 01
#### Learning Objectives
- what a workflow management system is.
- The benefits of using a workflow management system.
- Explain the benefits of using Nextflow as part of your bioinformatics workflow.
- Explain the components of a Nextflow script.
- How to install nextflow
- Run a Nextflow script.

### Practical Session

- Ensure that you've conda installed. Incase you don't you can follow these steps
First navigate to your home directory 
```
cd ~ 
curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"

```
Then run the command below. Type yes for all the prompts

```
bash Miniforge3-$(uname)-$(uname -m).sh
```
Then restart your terminal
```
source ~/.bashrc
```

Create a conda environment and install nextflow in that env
```
conda create -n nextflow bioconda::nextflow
```

#### Overview for today's practical session

We shalll create a small pipeline that performs quality control on sequencing reads using FastQC and fastp, generates a summary report using MultiQC, and assembles the genome using shovill.

Initially, we will write the pipeline as a single script and later modularize it.

We shall use 2 paired end sequences of Sars-cov2 as our test data

Key parts of the pipeline include;
- Defining parameters to parse our test data into the pipeline
- defining processes for fastqc, fastp, multiqc and shovill.
- Creating a workflow
- creating a config file



### Requirements
Please have the following software and user accounts ready.
- [GitHub Account](https://github.com/)
- [Docker Hub Account](https://hub.docker.com/signup)
- [Visual Studio Code](https://code.visualstudio.com/) or your favorite code editor. 

A preconfigured Nextflow development environment is available using Gitpod. To run **Gitpod**:

- Click the following URL: https://gitpod.io/#https://github.com/nextflow-io/training
  -- This is nextflows GitHub repository URL, prefixed with https://gitpod.io/#
- Log in to your GitHub account (and allow authorization).
- Once you have signed in, Gitpod should load (skip prebuild if asked).
- _If you decided to use the Gitpod environment, you don`t need to install anything into your local computer! But still, you would need to have github and docker accounts_

To follow the training on your computer, you will need the following software and files:
- Bash
- [Java11](https://www.oracle.com/java/technologies/downloads/) (or later, up to 18)
- [Nextflow](https://www.nextflow.io/docs/latest/getstarted.html#installation)
- [nf-core](https://nf-co.re/)
- [nf-core tools on Github](https://github.com/nf-core/tools)
- [Docker](https://www.oracle.com/java/technologies/downloads/)
- [GitHub CLI](https://cli.github.com/)
- [Data](https://github.com/adolfmukama/pre-hackathon_training/tree/main/data) 


### Resources


- https://www.ghga.de/
- https://carpentries-incubator.github.io/workflows-nextflow/01-getting-started-with-nextflow.html

Documentation and reference material for nextflow:
- Nextflow homepage: https://www.nextflow.io/
- Nextflow training material: https://training.nextflow.io
- Pipeline examples: https://www.nextflow.io/example1.html
- Main documentation: https://www.nextflow.io/docs/latest/index.html
- Common implementation patterns for developers: http://nextflow-io.github.io/patterns/index.html

Docker for beginners:
- https://docker-curriculum.com/
  
Github Actions & GitHub CI:
- https://docs.github.com/en/actions/automating-builds-and-tests/about-continuous-integration
- https://resources.github.com/ci-cd/


Do you have any questions? mail to oyesigyemukamaadolf25@gmail.com

### Contributors  : 
- [Firas Zemzem](https://github.com/Zemzemfiras1) : PhD student ,Laboratory of Cytogenetics, Molecular Genetics and Biology of Reproduction CHU Farhat Hached Sousse, Higher institute of Biotechnology of Monastir, University of Monastir, Tunisia
