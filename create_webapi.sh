#!/bin/bash
# Creates an EF powered webAPI

echo "
Project Name:
"

read FileName

dotnet new webapi -o ../Project/$FileName

echo "
Project created successfully under ../Project/$FileName
"

cd ../Project/$FileName

echo "
Adding packages
"

# To add packages

dotnet add package Microsoft.EntityFrameworkCore.InMemory
dotnet add package Microsoft.EntityFrameworkCore.Design
dotnet add package Microsoft.Data.Sqlite.Core
dotnet add package Microsoft.EntityFrameworkCore.Sqlite
dotnet add package Microsoft.EntityFrameworkCore.Sqlite.Core
dotnet add package Microsoft.AspNetCore.Mvc.NewtonsoftJson


echo "
Packages added successfully.
"

code -r ../$FileName

