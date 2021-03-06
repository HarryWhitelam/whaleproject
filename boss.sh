#!/bin/bash
#BATCH --mail-type=ALL
#SBATCH --mail-user=gfs19eku@uea.ac.uk
#SBATCH -p compute-16-64
#SBATCH --mem=12G
#SBATCH --time=0-12:00
#SBATCH -o results/Boss-%j.out
#SBATCH -e results/Boss-%j.err

module load java
javac -cp ".:tsml.main.jar" BossExperiment.java RunClassifier.java
java -cp ".:tsml.main.jar" BossExperiment

