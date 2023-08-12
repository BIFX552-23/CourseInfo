# find a seed that gives me 20 heads in a row

library(magrittr)

# let's pick a bunch of random seeds to try out
set.seed(293847)
seeds <- runif(1e8, 0, .Machine$integer.max) %>%
  as.integer() %>%
  unique()

# which one will give us the best result?
bestseed <- 0
maxHeads <- 0

# check for up to 1000 heads in a row
ncheck <- 1e4

for(i in seeds)
{
  set.seed(i)
  
  # flip `ncheck` coins
  heads <- rbinom(ncheck, 1, 0.5) %>%
    cumsum()
  
  # see how many heads we get in a row after setting the seed
  nheads <- which(heads[-1] == heads[-ncheck]) %>%
    min()
  
  # if nheads > maxHeads, we have a new winner
  if(nheads > maxHeads)
  {
    maxHeads <- nheads
    
    paste("New winner!\n",
          "Seed", i, "results in", maxHeads, "1's in a row.\n") %>%
      cat()
  }
}
