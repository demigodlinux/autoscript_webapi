#!/bin/bash

echo "
Project Name:
"
read FileName

mkdir ../../Project/$FileName

cd ../../Project/$FileName

ng new $FileName

cd $FileName

ng add @angular/material

npm i xlsx

code -r ../$FileName

ng serve

