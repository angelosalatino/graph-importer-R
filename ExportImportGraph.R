#' Both functions need jsonlite library
#' library(jsonlite)


#' Allow to both export and convert an igraph object to JSON.
#' 
#' @param g the igraph object
#' @param filename the out filename where to store the converted json. This parameter is optional. The funcion returns a json anyway. If this parameter is set it will also be saved into the file
#' @return json string
exportGraph <- function(g,filename){
  #convert graph into a list
  graph <- list()
  graph$edges <- as_data_frame(g, what = "edges")
  graph$vertices <- as_data_frame(g, what="vertices")
  row.names(graph$vertices) <- NULL
  graph$directed <- is.directed(g)
  #convert list into a json
  json.content <- toJSON(graph, pretty=TRUE)
  #write json into a file
  if(!missing(filename)) {
    sink(filename)
    cat(json.content)
    sink()
  }
  #return the json in case you need it
  return(json.content)
}

#' Allows to convert a json into an igraph object
#' It is essential that the json contains an igraph object
#' 
#' @param filename either the json or the filename of the file containing the json
importGraph <- function(filename){
  built.graph <- fromJSON(filename, flatten=TRUE)
  built.g <- graph_from_data_frame(built.graph$edges, directed=built.graph$directed, vertices=built.graph$vertices)
  return(built.g)
}


