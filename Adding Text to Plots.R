# Split the screen using the layout function
layout(matrix(c(1,1,2,2), 2, 2, byrow = T), heights = c(4,1))

# plot the figure
plot(rnorm(10),ylab="", xlab="Use the xlab argument", main="Use the title", ty="o", pch=19)

# Add text
mtext("Use the mtext() function")
?mtext()
temp <- locator(1) # On the chart, click where you would like the text to appear
text(temp,"Use the text() with or without the locator() function")

# Add text using the following Corner_text function:
Corner_text <- function(text, location="topright"){
  legend(location,legend=text, bty ="n", pch=NA) 
}
Corner_text(text="Use Corner_text() function")
Corner_text(text="Use the Corner_text() function",location= "bottomright")

# use the title function 
title(sub="Add subtitle using the title() function")

# load a library for creating more text
library(gplots)

# ?textplot # use this for more information about the function

# layout.show(2) # show the split between top and bottom screens
temptext1 <- "Add here notes. The plot above represents 10 random points drawn from Normal distribution. The plot is generated in order 
to visualize all the different options one can use for adding text to a plot. 
You can control this text size using the usual \"cex\" argument.
\nYou can increase readability if you skip lines. 
\nUse this space when you have complicated charts that require some more details. Add explanations and preemt possible questions, by that 
saving readers' time (e.g. \"is it percentage or basis points?\" )."
temptext2 <-  "You can also add more text in the usual way by using again the locator(1)+text() functions" 
textplot(temptext1, valign="center", cex=0.8, halign= "left", mar=c(0,0,0,0), col=2) 

# mar=c(0,0,0,0) removes the margins
temp <- locator(1)
text(temp, temptext2,col=4)