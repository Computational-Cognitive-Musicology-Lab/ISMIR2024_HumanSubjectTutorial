# Music and emotion dataset (Film Soundtracks) 
This readme is taken from Tuomas Eerola's OSF page: https://osf.io/p6vkg/ 

## Background

One drawback in music and emotion research has been the choice, quality, and amount of musical examples used as stimuli. Too often the previous studies have utilized well-known excerpts of Western classical music, which have been chosen arbitrarily by the researchers. Moreover, the stimuli have mostly been highly typical exemplars of the chosen emotions even if the underlying emotion model does not imply that emotions are structured around specific categories.

## Selection of film soundtracks as stimuli

This dataset we refer to as "Soundtracks" are designed to overcome at least some of the above-mentioned problems since they contain not that well known examples (although some could be identified by film aficionados). The selection of the excerpts has been done in terms of dimensional and discrete emotion model (see the paper for details) and evaluated by a pilot study and a larger scale rating study. The soundtracks are short (approx. 15 second) excerpts from film soundtracks. The full details of the stimulus selection and evaluation are available in a paper:

* Eerola, T. & Vuoskoski, J. K. (2011). A comparison of the discrete and dimensional models of emotion in music. _Psychology of Music, 39(1)_, 18-49.
[https://doi.org/10.1177/0305735610362821](https://doi.org/10.1177/0305735610362821)

## Release of stimulus sets

Originally these stimuli were released at [https://www.jyu.fi/hum/laitokset/musiikki/en/research/coe/materials/emotion/soundtracks/](https://www.jyu.fi/hum/laitokset/musiikki/en/research/coe/materials/emotion/soundtracks/), which is hosted by the University of Jyväskylä, Finland. Due to multiple changes in the university web pages and the fact that both authors have moved on from the institute, the page has become unresponsive and difficult to maintain. For this reason, we are now depositing the files to [Open Science Framework](https://osf.io).

The full datasets (audio files, documentation, and behavioural ratings) for Set 1 (360 files) and Set 2 (110 files) are provided here in order to share the stimulus materials for academic research. In addition, we release a longer version of some tracks we also have used in the past (1-min set). The audio files have been compressed to MP3 files using moderate quality compression in a zipped archive that contains files named as `001.mp3` to `360.mp3` corresponding to the index given in the accompanying rating data and tracknames. 

### Corrections and updates

The first release of the data was done in 2011. Since the release, colleagues have commented that some of the track titles are incorrect. These errors concern either the name of the soundtrack or point out that there are two copies of the same stimuli within the Set 2. There is one mislabelled track in the support information; track `009` is from Untouchables and track `017` is from the "The Fifth Element", which have now been corrected to the track listings (see below). 

Two of the tracks have been used twice in the dataset (Set 2). This was intentional since two excerpts fitted two sets of criteria when selecting the excerpts: track `010` is the same as track `095`. Tracks `084` and `088` are from same track but from different segments of the track. Thanks for Masato Miyoshi for informing us about the errors.

#### Set 1 (360 examples)

This Set 1 was developed for piloting purposes and has fewer ratings per track. The initial results of the rating of these tracks were used to develop Set 2, which is probably more reliable and commonly utilised source of musical materials (see paper for details).

* *Audio*: set1_stimuli.zip
* *Track names*: set1_tracklist.csv 
* *Ratings*: mean_ratings_set1.csv. This is a CSV file with the header that states the stimulus `number`, and mean ratings for `valence`,`energy`,`tension`,`anger`,`fear`,`happy`,`sad`,`tender`, and finally, the intended `TARGET` emotion. The ratings have been given on a scale from 1 (minimal) to 9 (maximal emotion).


