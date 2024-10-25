###############################################################################
# visualise_ratings.R
# Tuomas Eerola, Durham University, October 2018
# Part of the re-release of the film soundtrack stimuli in OSF
#
##############################################################################

d <- read.csv('mean_ratings_set2.csv')

library(dplyr)
library(stringr)
library(reshape2)
library(ggplot2)

## CREATE SEPARATE FACTORS FROM THE EXISTING LABELS

d$TARGET_EMOTION <- 'NONE'
d$TARGET_EMOTION[str_detect(d$TARGET,"VALENCE")]<-"Valence"
d$TARGET_EMOTION[str_detect(d$TARGET,"ENERGY")]<-"Energy"
d$TARGET_EMOTION[str_detect(d$TARGET,"TENSION")]<-"Tension"
d$TARGET_EMOTION[str_detect(d$TARGET,"ANGER")]<-"Anger"
d$TARGET_EMOTION[str_detect(d$TARGET,"FEAR")]<-"Fear"
d$TARGET_EMOTION[str_detect(d$TARGET,"HAPPY")]<-"Happy"
d$TARGET_EMOTION[str_detect(d$TARGET,"SAD")]<-"Sad"
d$TARGET_EMOTION[str_detect(d$TARGET,"TENDER")]<-"Tender"
d$TARGET_EMOTION[str_detect(d$TARGET,"BEAUTY")]<-"Beauty"
d$TARGET_EMOTION[str_detect(d$TARGET,"LIKING")]<-"Liking"
table(d$TARGET_EMOTION)

d$TARGET_STRENGTH <- 'NONE'
d$TARGET_STRENGTH[str_detect(d$TARGET,"_HIGH")]<-"High"
d$TARGET_STRENGTH[str_detect(d$TARGET,"_MODERATE")]<-"Moderate"
table(d$TARGET_STRENGTH)

d$TARGET_POLARITY <- 'NONE'
d$TARGET_POLARITY[str_detect(d$TARGET,"NEG")]<-"Negative"
d$TARGET_POLARITY[str_detect(d$TARGET,"POS")]<-"Positive"

table(d$TARGET_POLARITY)

d$TARGET_FRAMEWORK <- 'Dimensional'
d$TARGET_FRAMEWORK[str_detect(d$TARGET_POLARITY,"NONE")]<-"Discrete"
table(d$TARGET_FRAMEWORK)

m<-melt(d,id.vars = c('Number','TARGET_EMOTION','TARGET_STRENGTH','TARGET_POLARITY','TARGET_FRAMEWORK'),measure.vars = c('Valence','Energy','Tension','Anger','Fear','Happy','Sad','Tender'))

m$TARGET_EMOTION<-factor(m$TARGET_EMOTION)
m$TARGET_STRENGTH<-factor(m$TARGET_STRENGTH)
m$TARGET_POLARITY<-factor(m$TARGET_POLARITY)
m$TARGET_FRAMEWORK<-factor(m$TARGET_FRAMEWORK)

### PLOT

# Discrete
m_dis<-filter(m,TARGET_FRAMEWORK=="Discrete")

g1<-ggplot(m_dis,aes(x=variable,y=value,fill=variable))+
  geom_boxplot(outlier.shape = NA)+
  facet_wrap(~TARGET_EMOTION+TARGET_STRENGTH,nrow = 6)+
  scale_y_continuous(breaks = seq(1,9,by=2),limits = c(1,9))+
  ylab("Mean Rating")+
  xlab("Emotion")+
  ggtitle('Stimuli Targeting Discrete Emotions (Tracks 001-050)')+
  theme_bw()
g1
ggsave(filename = "discrete_boxplot.png",device = 'png',width = 9,height = 9,dpi = 150)

# Dimensional
m_dim<-filter(m,TARGET_FRAMEWORK=="Dimensional")

g2<-ggplot(m_dim,aes(x=variable,y=value,fill=variable))+
  geom_boxplot(outlier.shape = NA)+
  facet_wrap(~TARGET_EMOTION+TARGET_POLARITY,nrow = 3)+
  scale_y_continuous(breaks = seq(1,9,by=2),limits = c(1,9))+
  ylab("Mean Rating")+
  xlab("Emotion")+
  ggtitle('Stimuli Targeting Dimensional Emotions (Tracks 51-110)')+
  theme_bw()
g2

ggsave(filename = "dimensional_boxplot.png",device = 'png',width = 9,height = 5,dpi = 150)

