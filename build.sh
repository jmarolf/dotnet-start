#!/usr/bin/env bash

dotnet restore
dotnet msbuild -noLogo -v:m -m -graph -isolate