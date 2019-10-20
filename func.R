func <- function(x) {
     return(-x^2*exp(-3*x))
}
opt <- optimize(func,c(0.,5.))  # c(0,5) is the range
cat(opt$minimum,opt$objective)  # print the min and the objective values
plot(func,0,5)   # to plot the function from 0 to 5
abline(h=opt$objective,col=2) # horizontal line, col especifies color 
abline(v=opt$minimum,col=3)  # vertical line