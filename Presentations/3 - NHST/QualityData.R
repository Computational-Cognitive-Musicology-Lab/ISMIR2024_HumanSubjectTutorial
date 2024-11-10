# Read and view data

SiSEC <- read.csv('SiSEC08_source_separation/SiSEC08_parsed.csv') |> 
  subset(grepl('Algo', Algorithm))

colnames(SiSEC) # view column names
View(SiSEC)

# Make plots

with(SiSEC,
     plot(Ratingscore ~ factor(Algorithm))
     )

# Stats

with(SiSEC,
     lm(Ratingscore ~ Algorithm) |> summary()
     
     )
