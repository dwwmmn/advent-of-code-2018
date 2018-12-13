version     = "0.1.0"
author      = "Drew Malzahn"
description = "Build project files."

skipDirs = @["tests", "private"]

task m, "Build and run project":
  exec "nim c -r --out:bin/p1.nim src/p1.nim"

task test, "test project":
  exec "nim c -r --out:bin/test_project tests/test_project"

task test_file1, "test file1":
  exec "nim c -r --out:bin/test_file1 tests/test_file1"

task docs, "Build all the docs":
  exec "nim doc --out:docs/project.html src/project.nim"
  exec "nim doc --out:docs/file1.html src/file.nim"

task tree, "Show the directory tree":
  exec "tree -I '*~|nimcache'"