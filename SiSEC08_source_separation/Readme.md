# SEBASS-DB

In our workshop, we use the SiSEC08 dataset as an example dataset for illustrating various parts of experimental design and data analysis.
The SiSEC08 dataset is just one part of the larger [SEBASS-DB dataset](https://www.audiolabs-erlangen.de/resources/2019-WASPAA-SEBASS#literatureBib).
A paper about this dataset is:

> T. Kastner and J. Herre, "The Sebass-DB: A Consolidated Public Data Base of Listening Test Results for Perceptual Evaluation of BSS Quality Measures," *2022 International Workshop on Acoustic Signal Enhancement* (IWAENC), Bamberg, Germany, 2022, pp. 1--5, doi: 10.1109/IWAENC53105.2022.9914724. 

```
@INPROCEEDINGS{9914724,
  author={Kastner, Thorsten and Herre, Jürgen},
  booktitle={2022 International Workshop on Acoustic Signal Enhancement (IWAENC)}, 
  title={The Sebass-DB: A Consolidated Public Data Base of Listening Test Results for Perceptual Evaluation of BSS Quality Measures}, 
  year={2022},
  volume={},
  number={},
  pages={1-5},
  keywords={Source separation;Databases;Conferences;Acoustic measurements;Acoustics;Calibration;Testing;audio source separation;listening tests;dataset},
  doi={10.1109/IWAENC53105.2022.9914724}}
```

A pdf of the paper is included in this repo: `The_Sebass-DB_A_Consolidated_Public_Data_Base_of_Listening_Test_Results_for_Perceptual_Evaluation_of_BSS_Quality_Measures.pdf`

## SiSEC08 Dataset 

The *SiSEC08* dataset is part of the *SEBASS-DB*, a collection of subjective ratings on the perceived quality of separated audio soure signals. It contains the results on listening tests on assessing the *Basic Audio Quality* of such signals.
 
### Collection of the subjective ratings.

The subjective ratings were collected using [MUSHRA](https://en.wikipedia.org/wiki/MUSHRA) [(see ITU-R BS1534.3)](https://www.itu.int/dms_pubrec/itu-r/rec/bs/R-REC-BS.1534-3-201510-I!!PDF-E.pdf) based listening tests.
The [webMUSHRA](https://www.audiolabs-erlangen.de/resources/webMUSHRA) software was used for some of the listening tests. It provides a graphical user interface for the participants of the listening test.

The test procedure can be explained as follows:
#### Method of presentation
In each trial of a listening test, the participants blindly rated the following test signals in comparison to the known (ideal) reference source signal:

- separated versions of the source signal from different separation algorithms
- the original source signal (hidden reference)
- the signal mixture (as anchor signal)

The subjects had the possibility to switch instantaneously between each of the presented signals and to set playback loops. The items were presented via headphones in a quite listening room.

Experienced listeners took part in the listening test.

#### Method of quantification
The listener had to grade the unknown signals on the MUSHRA scale (0..100). The numerical scale is equally divided into five segments and semantical annotated ("bad", "poor", "fair", "good", "excellent"). The question asked to the listener was: "Grade the [Basic Audio Quality](https://www.itu.int/dms_pubrec/itu-r/rec/bs/R-REC-BS.1534-3-201510-I!!PDF-E.pdf) of the items under test with respect to the reference signal. Any perceived differences between the reference and the other signal must be interpreted as an impairment."


### License
Due to the different origin of the audio signals and the subjective ratings, different licenses apply to these data.

- The subjective grades are licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/).
- The audio asignals are licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 2.0 license](https://creativecommons.org/licenses/by-nc-sa/2.0/). See also the file "Licence_AudioSignals.txt".
- When using this database, the following paper must be referenced: "An Efficient Model for Estimating Subjective Quality of Separated Audio Source Signals" by (link:fau/assistant/kastner/ text: Thorsten Kastner) and (link:fau/professor/herre/ text:Jürgen Herre), 2019 IEEE Workshop on Applications of Signal Processing to Audio and Acoustics (WASPAA 2019), New Paltz, New York.


All audio signals had been transformed to 2 channel stereo, 16 Bit, 48kHz Sampling rate and PCM in WAVE format. The audio format of the [original audio signals](http://www.irisa.fr/metiss/SiSEC08/SiSEC_underdetermined/dev2_eval.html) may differ.

### Audio files and listener ratings Structuring

The listener ratings are provided as csv-files with the fields:  
*Testname*, *Listener name*, *Test Trial*, *Test Condition*,  *Rating score*. 

Example:  

Testname | Listener | Trial | Condition | Rating score
--- | --- | --- | --- | ---
SiSEC08 | Listener\_28 | male\_inst\_sim\_4 | Algo34 | 37 

The structure of the folder containing the audio files is organized as follows:  
*Signals/Test Condition/{test Trial}.wav*  

Example:  
./Signals/Algo34/male\_inst\_sim\_1.wav  
./Signals/Algo34/male\_inst\_sim\_2.wav  
./Signals/Algo34/male\_inst\_sim\_3.wav  
...

### Mapping name of listening test condition to algorithm/serparation system
The test conditions are numbered starting from "Algo8" up to "Algo34". The number refers to the separation system participated in the *First Scommunity-based Signal Separation Evaluation Campaign (SiSEC 2008)*

To map number to separation system/algorithm:

1. Take the number, e.g. "34" from "Algo34"
2. For all algorithm, except for "Algo8": subtract 20. "34" -> "14"
3. For all algorithm, except for "Algo8": Open the following website http://www.irisa.fr/metiss/SiSEC08/SiSEC_underdetermined/dev2_eval.html
4. Only in case of "Algo8": Open https://www.irisa.fr/metiss/SASSEC07/?show=results
5. Have a look at the cell in the result matrix containing the same algorithm number. (14 -> "Algorithm 14 Z. El Chami")


**The listening test results have been used in the following studies**

```
@conference{ksr_measures,
Address = {New York},
Author = {Thorsten Kastner},
Booktitle = {Audio Engineering Society Convention 127},
Month = {Oct},
Number = {7824},
Title = {Evaluating physical measures for predicting the perceived quality of blindly separated audio source signals},
Url = {http://www.aes.org/e-lib/browse.cfm?elib=15020},
Year = {2009}
}

@conference{ksrWaspaa19,
Address = {New Paltz, New York, USA},
Author = {Thorsten Kastner and Jürgen Herre},
Booktitle = {{IEEE Workshop on Applications of Signal Processing to Audio and Acoustics (WASPAA'19)}},
Month = {October},
Title = {An Efficient Model for Estimating Subjective Quality of Separated Audio Source Signals},
Year = {2019}}
```


Version 1.0 Oct. 2019
