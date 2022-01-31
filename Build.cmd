@echo off
dotnet restore
dotnet msbuild -graph -isolate -binaryLogger:artifacts/log/build.binlog 