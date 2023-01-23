import
  std/[strutils, osproc]

proc getPacmanPkgs*(): string =
  result = osproc.execCmdEx("pacman -Q | wc -l")[0].replace("\n", "")
