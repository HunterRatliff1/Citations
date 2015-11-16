citation = function (text="@HunterRatliff1", pos="BR", size=12, color="#333F48", style="plain")
{
  ## Required packages
  suppressPackageStartupMessages(require(grid))
  suppressPackageStartupMessages(require(gridExtra))
  suppressPackageStartupMessages(require(stringi))
  suppressPackageStartupMessages(require(lubridate))
  
  if(stri_startswith_fixed(pos, "B")) Y = unit(0.03, "npc") # Bottom
  if(stri_startswith_fixed(pos, "T")) Y = unit(0.97, "npc") # Top
  if(stri_endswith_fixed(pos,   "R")) X = unit(0.97, "npc") # Right
  if(stri_endswith_fixed(pos,   "L")) X = unit(0.03, "npc") # Left
  
  if(stri_endswith_fixed(pos, "R") & stri_startswith_fixed(pos, "B")) Just=c("right", "bottom")
  if(stri_endswith_fixed(pos, "L") & stri_startswith_fixed(pos, "B")) Just=c("left",  "bottom")
  if(stri_endswith_fixed(pos, "R") & stri_startswith_fixed(pos, "T")) Just=c("right", "top")
  if(stri_endswith_fixed(pos, "L") & stri_startswith_fixed(pos, "T")) Just=c("left",  "top")
  
  GP = gpar(
    fontface = style, 
    fontsize = size, 
    col = color)
  
  grid.text(as.character(text), x=X, y=Y, just=Just, gp=GP)
}




citation.apa = function (text="") {
  ## Required packages
  suppressPackageStartupMessages(require(grid))
  suppressPackageStartupMessages(require(gridExtra))
  suppressPackageStartupMessages(require(stringi))
  suppressPackageStartupMessages(require(lubridate))
  
  #   
  # Orange  :: #F05B49
  # Green   :: #6299A0
  # DarkGrn :: #007371
  # LigtGrn :: #C2E8EB
  grid.text(as.character("hunter.ratliff@austinpetsalive.org"), x=unit(0.995, "npc"), y=unit(0.005, "npc"), just=c("right", "bottom"), 
            gp=gpar(
              fontface = "italic", 
              family="Verdana",
              col = "#4D4D4D",
              cex=0.8)
            # )theme(plot.title = element_text(family="American Typewriter", color = "#DD5928"),
            # axis.title = element_text(family="Verdana", color = "#5BC002", face = "bold")
            # Georgia
  )
  grid.text(as.character(text), x=unit(0.995, "npc"), y=unit(0.995, "npc"), just=c("right", "top"), 
            gp=gpar(
              # fontface = "bold", 
              family="American Typewriter",
              col = "#5BC002",
              cex=1.15)
  )
  grid.text(paste("Created on", as.character(today())), x=unit(0.005, "npc"), y=unit(0.005, "npc"), just=c("left", "bottom"), 
            gp=gpar(col = "#DD5928", cex=0.75))
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