#' This function is a conversation starter.
#' 
#' some helpful text.
#' @param who character(1) The name of the person for conversation
#' @return character(1) conversation starter
#' @examples
#'    hi("Qian Liu")
#' @export
#' 
hi = function(who){
  paste("hello", who, ", you have", nchar(who), "letters in your name")
}

shout = function(who){
  paste("hello", shout(who), "you have", nchar(who), "letters in your name")
  
}
