# Export-Import-a-graph-via-Json-in-R
Save, Export and Import a graph (igraph) to JSON in R


# Test:
```R
library(jsonlite)
out <- exportGraph(g)
g3 <- importGraph(exportGraph(g))
```
