import
  std/[strutils, osproc]

proc getRpmPkgs*(): string =
  result = osproc.execCmdEx("rpm -qa | wc -l")[0].replace("\n", "")
