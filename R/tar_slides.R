library(renderthis)


quarto_to_html <- function(slide_path){
  withr::local_options(list(crayon.enabled = NULL))
  
  quarto::quarto_render(
    slide_path,
    quiet = TRUE
  )
  
  return(paste0("_site/",tools::file_path_sans_ext(slide_path), ".html"))
}

quarto_to_pdf <- function(slide_path){
  withr::local_options(list(crayon.enabled = NULL))
  path_sans_ext <- gsub("_site/","", paste0("_site/",tools::file_path_sans_ext(slide_path)))
  
  pagedown::chrome_print(input = slide_path, output = paste0(path_sans_ext, ".pdf"))
  
  return(paste0(path_sans_ext,".pdf"))                   
}