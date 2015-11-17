citation = function (text="@HunterRatliff1", pos="BR", dist=0.02,
                     font.size=12, color="#333F48", fontfamily="", style="plain", 
                     draw=TRUE){
  ## Required packages
  sapply(c("grid", "gridExtra", "stringi", "lubridate"), require, character.only=TRUE)  
  
  if(stri_startswith_fixed(pos, "B")) Y = unit(dist, "npc")   # Bottom
  if(stri_startswith_fixed(pos, "T")) Y = unit(1-dist, "npc") # Top
  if(stri_endswith_fixed(pos,   "R")) X = unit(1-dist, "npc") # Right
  if(stri_endswith_fixed(pos,   "L")) X = unit(dist, "npc")   # Left
  
  if(stri_endswith_fixed(pos, "R") & stri_startswith_fixed(pos, "B")) Just=c("right", "bottom")
  if(stri_endswith_fixed(pos, "L") & stri_startswith_fixed(pos, "B")) Just=c("left",  "bottom")
  if(stri_endswith_fixed(pos, "R") & stri_startswith_fixed(pos, "T")) Just=c("right", "top")
  if(stri_endswith_fixed(pos, "L") & stri_startswith_fixed(pos, "T")) Just=c("left",  "top")
  
  GP = gpar(
    fontsize   = font.size, 
    col        = color,
    fontfamily = fontfamily,
    fontface   = style) 
  
  text.grob <- textGrob(as.character(text), x=X, y=Y, just=Just, gp=GP)
  
  if(draw){
    grid.draw(text.grob)
  } else {
    return(text.grob)
  }
}


citation.date <- function(text="@HunterRatliff1", draw=TRUE) {
  sapply(c("grid", "gridExtra", "stringi", "lubridate"), require, character.only=TRUE)  
  
  Date <- as.character(today())
  Text <- paste("Created on", Date)
  
  citation(text = Text, pos = "BL", color = "#382F2D", dist = 0.005, draw = draw)
  citation(text=text, pos = "TR", color = "#333F48", fontfamily = "Open Sans")
}
 




citation.apa = function (text="", draw=TRUE) {
  ## Required packages
  sapply(c("grid", "gridExtra", "stringi", "lubridate"), require, character.only=TRUE)  
  #   
  # Orange  :: #F05B49
  # Green   :: #6299A0
  # DarkGrn :: #007371
  # LigtGrn :: #C2E8EB
  # 
  citation(text = "hunter.ratliff@austinpetsalive.org", pos = "BR", dist = 0.005,
           font.size = 12, color = "#4D4D4D", fontfamily = "Verdana", style = "italic",
            draw = draw)

  citation(text = as.character(text), pos = "TR", dist = 0.005,
           font.size = 17, color = "#5BC002", fontfamily = "American Typewriter",
           draw = draw)

  citation(text = paste("Created on", as.character(today())), pos = "BL", dist = 0.005,
           font.size = 13, color = "#DD5928", fontfamily = "Georgia",
           draw = draw)
  
}


citation.htr = function (text="") {
  ## Required packages
  suppressPackageStartupMessages(require(grid))
  suppressPackageStartupMessages(require(gridExtra))
  suppressPackageStartupMessages(require(stringi))
  suppressPackageStartupMessages(require(lubridate))
  
  grid.text(as.character("hunterratliff1@gmail.com"), x=unit(0.995, "npc"), y=unit(0.995, "npc"), just=c("right", "top"), 
            gp=gpar(
              fontface = "italic", 
              family="Open Sans",
              col = "#333F48",
              cex=0.8)
            # )theme(plot.title = element_text(family="American Typewriter", color = "#DD5928"),
            # axis.title = element_text(family="Verdana", color = "#5BC002", face = "bold")
            # Georgia
  )
  grid.text(as.character(text), x=unit(0.995, "npc"), y=unit(0.005, "npc"), just=c("right", "bottom"), 
            gp=gpar(
              # fontface = "bold", 
              family="American Typewriter",
              col = "#5BC002",
              cex=1.15)
  )
  grid.text(paste("Created on", as.character(today())), x=unit(0.005, "npc"), y=unit(0.005, "npc"), just=c("left", "bottom"), 
            gp=gpar(col = "#382F2D", cex=0.75))
}