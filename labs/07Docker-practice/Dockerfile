# Dockerfile for variant-calling (solution)

# start with Ubuntu
FROM ubuntu

# install dependencies
RUN apt-get update && apt-get install -y \
  wget \
  nano
  
# install miniconda
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN mkdir ~/miniconda3
RUN bash Miniconda3-latest-Linux-x86_64.sh -b -u -p ~/miniconda3
RUN ~/miniconda3/bin/conda init bash
RUN rm /Miniconda3-latest-Linux-x86_64.sh

# install software
RUN ~/miniconda3/bin/conda install -c bioconda fastqc -y
RUN ~/miniconda3/bin/conda install -c bioconda trimmomatic -y
RUN ~/miniconda3/bin/conda install -c bioconda bwa -y
RUN ~/miniconda3/bin/conda install -c bioconda samtools -y
RUN ~/miniconda3/bin/conda install -c bioconda bcftools -y

# start with bash
CMD ["/bin/sh", "-c", "exec bash"]
