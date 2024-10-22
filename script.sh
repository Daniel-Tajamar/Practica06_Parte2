#!/bin/bash

git init
git config user.name Daniel
git config user.email daniel.garciavalenca@tajama365.com
git branch -m master main

mkdir raw_data processed_data
touch readme.md .gitignore

git add .
git commit -m "Initial structure"

git branch etl
git branch streaming

echo \# Hello World >> README.md
git add .
git commit -m "Updated README.md"

touch first.py
echo print\('Hello wold'\) >> first.py
git add .
git commit -m "Created first.py"

git checkout etl
touch second.py
echo print\('Hello wold'\) >> second.py
git add .
git commit -m "Created second.py"

git checkout streaming
touch third.py
echo print\('Hello wold'\) >> third.py
git add .
git commit -m "Created third.py"

git status
git remote add origin https://github.com/Daniel-Tajamar/Practica06_Parte2.git
git push origin --all

echo El script se ejecutó correctamente