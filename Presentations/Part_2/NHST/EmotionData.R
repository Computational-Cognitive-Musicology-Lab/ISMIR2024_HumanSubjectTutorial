# Read and view data

emote <- read.csv('../../Data/Eerola_emotion/mean_ratings_set1.csv')

colnames(emote) # view column names
View(emote)

cor(emote[ , 2:9])

# Make plots

with(emote,
     hist(anger)
     )

with(emote,
     plot(tension ~ happy)
)

with(emote,
     plot(happy ~ factor(TARGET))
)


# Stats

with(emote,
     lm(tension ~ energy * anger) |> summary()
)

with(emote,
     lm(tension ~ TARGET) |> anova()
)


