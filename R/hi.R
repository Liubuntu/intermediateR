#' This function is a conversation starter.
#'
#' some helpful text.
#' @param who character(1) The name of the person for conversation
#' @param how character(1) How to greet the conversant. "shout" or "whisper".
#' @return character(1) conversation starter
#' @examples
#'    hi("Qian Liu")
#'    hi("Qian Liu", "whisper")
#' @export
#'
hi = function(who, how=c("shout", "whisper")){
  stopifnot(
    is.character(who),
    length(who) == 1,
    !is.na(who)
  )
  how = match.arg(how)
  fun = switch(how, shout=shout, whisper=whisper)
  paste("hello", fun(who), ", you have", nchar(who), "letters in your name")
}

shout = function(who){
  toupper(who)
}
whisper = function(who){
  tolower(who)
}
