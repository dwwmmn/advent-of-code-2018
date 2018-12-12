skipDirs = @["tests", "private"]

task m, "Build and run project":
  exec "nim c -r --out:bin/project project/project"

task test, "test project":
  exec "nim c -r --out:bin/test_project tests/test_project"

task test_file1, "test file1":
  exec "nim c -r --out:bin/test_file1 tests/test_file1"

task docs, "Build all the docs":
  exec "nim doc --out:docs/project.html project/project.nim"
  exec "nim doc --out:docs/file1.html project/file.nim"

task tree, "Show the directory tree":
  exec "tree -I '*~|nimcache'"