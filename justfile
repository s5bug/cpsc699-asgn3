#!/usr/bin/env just --justfile

set windows-shell := ["pwsh.exe","-NoLogo", "-noprofile", "-c"]

build:
  latexmk -output-directory=out ./src/main.tex

clean:
  {{ if os() == 'windows' { \
    'rm -Recurse -Force out' \
  } else { \
    'rm -rf out' \
  } }}
