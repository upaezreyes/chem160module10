factr1<- function(n) {
  if (n==1) return(1)
  return(n*factr1(n-1))
}