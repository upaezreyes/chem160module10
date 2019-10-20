if (!exists("ndice")) {
  stop("You need to set ndice")
}
ndice = 3
rolls = 1:6    # values of the dice from 1 to 6
nrolls = 10000  # number of rolls
total = 0   # keep track of the values

for (i in 1:nrolls)  { # from 1 to 10000 rolls
  roll = sum(sort(sample(rolls,ndice,replace=TRUE),decreasing=TRUE)[1:2])
  total = total + roll
}

cat("Average score", total/nrolls, "\n")

