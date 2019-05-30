data <- read.csv(file.choose())
 View(data)
data1 <- data[2:12]
#View(data1)

data2 <- scale(data1)
#View(data2)

d <- dist(data2,method = "euclidean")
clust <- hclust(d,method = "complete")
windows()
fit <- plot(clust,hang = -1)

groups <- cutree(clust,k=45)
groups

plot(data1,type = "n")
text(data1,rownames(data1))

km <- kmeans(data2,45)
str(km)

k=kmeans.ani(data2,45)
k$centers
plot(k)
str(k)
