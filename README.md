# graph-importer-R
Save, Export and Import a graph (igraph) to JSON in R

This file contains two fucntions only:
1. exportGraph 
2. importGraph

*exportGraph*: Allows to both export and convert an igraph object to JSON. 

*importGraph*: Allows to convert a json into an igraph object

It requires:
```R
library(jsonlite)
library(igraph)
```

# Test:
```R
#some graphs:
#1 
g1 <- graph(c(1,2,1,3,1,4,2,3,3,4,4,5,4,6,5,6,5,8,5,7,6,8,6,7,7,8,7,9), directed=F)
#2
g2 <- make_graph("Zachary") #the karate network

#export-import on json string
out.json <- exportGraph(g1)
imported.g1 <- importGraph(out.json)

#export-import on json file
exportGraph(g2,"zachary.json")
imported.g2 <- importGraph("zachary.json")

#another fancy way to copy a graph through JSON
g2.copy <- importGraph(exportGraph(g2))
```
