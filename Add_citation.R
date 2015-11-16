citation = function (text="HunterRatliff1@gmail.com", pos="BR", size=12, color="grey", style="plain")
{
  require(grid)
  require(gridExtra)
  
  if(pos=="BR")
  {
    grid.text(text,
              x = unit(0.97, "npc"), 
              y = unit(0.03, "npc"), 
              just = c("right", "bottom"), 
              gp = gpar(
                fontface = style, 
                fontsize = size, 
                col = color))
  }
  if(pos=="BL")
  {
    grid.text(text,
              x = unit(0.03, "npc"), 
              y = unit(0.03, "npc"), 
              just = c("left", "bottom"), 
              gp = gpar(fontface = style, fontsize = size, col = color))
  }
  if(pos=="TR")
  {
    grid.text(text,
              x = unit(0.97, "npc"), 
              y = unit(0.97, "npc"), 
              just = c("right", "top"), 
              gp = gpar(fontface = style, fontsize = size, col = color))
  }
  if(pos=="TL")
  {
    grid.text(text,
              x = unit(0.03, "npc"), 
              y = unit(0.97, "npc"), 
              just = c("left", "top"), 
              gp = gpar(fontface = style, fontsize = size, col = color))
  }
}

