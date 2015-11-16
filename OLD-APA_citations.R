## Function(s): citations
citation.text = function (text="Austin Pets Alive | 2015", corner="TL", text.color="#DD5928", size=12) {
  # Provides citation for outputs
  require(grid)
  require(gridExtra)
  
  if (corner=="TL") {
    grid.text(text, x = unit(0.02, "npc"), y = unit(0.98, "npc"), just = c("left", "top"), 
              gp = gpar(fontface = "bold", fontsize = size, col = text.color))
  }
  if (corner=="BL") {
    grid.text(text, x = unit(0.02, "npc"), y = unit(0.02, "npc"), just = c("left", "bottom"), 
              gp = gpar(fontface = "bold", fontsize = size, col = text.color)
    )
  }
  if (corner=="BR") {
    grid.text(
      text, x = unit(0.98, "npc"), y = unit(0.02, "npc"), just = c("right", "bottom"), 
      gp = gpar(fontface = "bold", fontsize = size, col = text.color)
    )
  }
  if (corner=="TR") {
    grid.text(
      text, x = unit(0.98, "npc"), y = unit(0.98, "npc"), just = c("right", "top"), 
      gp = gpar(fontface = "bold", fontsize = size, col = text.color)
    )
  }
}

citation.email = function (text="hunter.ratliff@austinpetsalive.org", corner="TR", text.color="#4D4D4D", size=10) {
  # Provides citation for outputs
  require(grid)
  require(gridExtra)
  
  if (corner=="TL") {
    grid.text(text, x = unit(0.02, "npc"), y = unit(0.98, "npc"), just = c("left", "top"), 
              gp = gpar(fontsize = size, col = text.color))
  }
  if (corner=="BL") {
    grid.text(text, x = unit(0.02, "npc"), y = unit(0.02, "npc"), just = c("left", "bottom"), 
              gp = gpar(fontsize = size, col = text.color)
    )
  }
  if (corner=="BR") {
    grid.text(
      text, x = unit(0.98, "npc"), y = unit(0.02, "npc"), just = c("right", "bottom"), 
      gp = gpar(fontsize = size, col = text.color)
    )
  }
  if (corner=="TR") {
    grid.text(
      text, x = unit(0.98, "npc"), y = unit(0.98, "npc"), just = c("right", "top"), 
      gp = gpar(fontsize = size, col = text.color)
    )
  }
}

citation = function () {
  citation.text()
  citation.email()
}