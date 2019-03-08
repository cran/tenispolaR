#' ZENIT-POLAR substitution cipher method of encryption
#'
#' Returns a message encrypted by ZENIT-POLAR substitution cipher method of encryption using by default TENIS-POLAR key.
#'
#' @details This kind of encryption replace the nth character of 1th key to the nth character of 2nd key and vice versa.
#'
#' @return encrypted message
#'
#' @name encryption
#'
#' @param x message to encrypt
#' @param key_from first one-way cipher
#' @param key_to second one-way cipher
#'
#' @examples
#'
#' x <- "orro o um psibinhe tisi er kisir: e ivorre der ceseir, e celpsisae der cisopir!"
#' encryption(x, key_from = "polar", key_to = "tenis")
#'
#' @export
encryption <- function(x, key_from = "tenis", key_to = "polar"){

  # Defense against the user arts

  if(!is.character(x))
    stop("non-character argument")

  if(!is.character(key_from))
    stop("non-character argument")

  if(!is.character(key_to))
    stop("non-character argument")

  if(nchar(key_from) != nchar(key_to))
    stop("'key_from' and 'key_to' must have same length")

  # Abertura das cifras de conversão

  cifra_from <- strsplit(key_from, split = "")[[1]]
  cifra_to   <- strsplit(key_to, split = "")[[1]]

  # Remoção de acentos / caracters especiais e todas em minusculas

  message <- iconv(tolower(x), to="ASCII//TRANSLIT")

  # Criptografia da mensagem

  for (i in 1:nchar(key_to)) {

    message <- stringr::str_replace_all(string = message,
                                        pattern = cifra_from[i],
                                        replacement = toupper(cifra_to[i]))

  }

  for (i in 1:nchar(key_to)) {

    message <- stringr::str_replace_all(string = message,
                                        pattern = cifra_to[i],
                                        replacement = toupper(cifra_from[i]))

  }

  message <- tolower(message)

  # Retornar mensagem

  return(message)
}
