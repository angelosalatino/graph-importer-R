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

out <- exportGraph(g)
g.new <- importGraph(exportGraph(g))
```
