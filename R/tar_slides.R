library(renderthis)
compress_pdf <- function(input, output, 
                         distill = "screen") {
  
  distill <- match.arg(distill)
  
  system2(
    tools::find_gs_cmd(), 
    args = shQuote(c(
      "-sDEVICE=pdfwrite",
      "-dCompatibilityLevel=1.4",
      sprintf("-dPDFSETTINGS=/%s", distill),
      "-o", output,
      input
    ))
  )
  
  compression_ratio <- 100 * (1 - file.size(output) / file.size(input))
  message(sprintf("Compression ratio: %.2f %%", compression_ratio))
}



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
  
  input.pdf <-pagedown::chrome_print(input = slide_path)
  compress_pdf(input = input.pdf, output = paste0(path_sans_ext, ".pdf"))
  return(paste0(path_sans_ext,".pdf"))                   
}