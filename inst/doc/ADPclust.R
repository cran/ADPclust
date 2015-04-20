## ----, eval=FALSE--------------------------------------------------------
#  install.packages("ADPclust_0.6.3.tar.gz", repos = NULL, source = TRUE)

## ------------------------------------------------------------------------
library(ADPclust)

## ----, fig.height=2.8, fig.width=7---------------------------------------
# Load a simple simulated data set with 3 clusters.
data(clust3)
ans <- adpclust(clust3)

## ------------------------------------------------------------------------
summary(ans)

## ----, eval=FALSE--------------------------------------------------------
#  # Result not shown.
#  ans <- adpclust(clust3, htype = "ROT")

## ----, fig.height=2.8, fig.width=7---------------------------------------
ans <- adpclust(clust3, nclust = 2:15, h = 10)

## ----, fig.height=2.8, fig.width=7---------------------------------------
# Load the data
data(clust5)
ans <- adpclust(clust5, h = AMISE(clust5), f.cut = 0.01)

## ----, fig.height=2.8, fig.width=7---------------------------------------
ans <- adpclust(clust5, h = AMISE(clust5), f.cut = 0.1)

## ----, eval = FALSE------------------------------------------------------
#  data(clust5.1)
#  ans <- adpclust(clust5.1, centroids = "user")

