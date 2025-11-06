In this experiment, we look at the work done in https://arxiv.org/abs/2112.03126. Specifically in section 4, they conduct an experiment on how robust DDPM is to corruptions, when used for a segmentation task.

We conduct experiments which further investigates the robustness of DDPM, by training the pixel classifier / MLP on top of DDPM on a mixture of corrupted / clean data, inorder to improve the performance on corrupted data of severity levels 1, 3 and 5.

## File naming ##


### Data ###
ucloud horse_21 exp contains  data for all 17 corruptions, in each variant of severity 1 (s1), severity 3 (s3) and severity 5 (s5). Both training and test data is included.

ucloud_horse_21_mixed_exp contains mixtures of data. The general structure is as follows:

{corruption_name}_severity{lvl}_{%}pct

e.g gaussian_nosie_severity1_10pct is a dataset where 10% of the images are corrupted with gaussian noise of severity 1

### Scripts ###

ddpm-segmentation/scripts/ddpm contains bash files for experiments. The naming convention here is:

train_interpreter_{corruption_type}_[optional]{mix}.sh

The bash files without the _mix are experiments where we train three MLPs (with severity 1, 3, 5) on 100% corrupt data, and evaluate on clean data.

The bash files with _mix are experiments where we train models of combinations of severity levels and data distributions, and evaluate on clean, s1, s2, s3 data.

### json configs ###

Finally in ddpm-segmentations/experiments/horse_21 are different json files. The naming convention here is:

ddpm_{corruption_type}_severity{lvl}_[optional]{pct}pct.json

The json files without any _pct are experiments where we train three MLPs (with severity 1, 3, 5) on 100% corrupt data, and evaluate on clean data.

The json files with _pct are experiments where we train models of combinations of severity levels and data distributions, and evaluate on clean, s1, s2, s3 data.

There also exists a baseline DDPM, and a baseline evaluted on specific corruptions.

## HOW TO RUN##

In order to run these experiments, the entire ddpm-segmentation folder should be uploaded to Ucloud (or a similar provider of compute).

Experiments are done in the following way:

1. ALWAYS running init.sh to install required packages
2. Running another .sh file for an experiment to be reproduced

The bash file should then run train_interpreter.py or train_interpreter_mix.py (depending on which experiment) and point to the json files for configurations.

The filepaths of both the .json and .sh files are specified according to our Ucloud setup. If this is run on a different platform, file paths might need to be updated accordingly.