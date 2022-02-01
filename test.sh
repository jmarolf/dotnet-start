
#!/usr/bin/env bash

dotnet test --no-restore --no-build --blame --blame-hang-dump-type full  --blame-hang-timeout 10min --blame-crash-dump-type full --blame-crash-collect-always true --logger "trx;LogFileName=TestResults.trx" -p:ParallelizeTestCollections=true --collect:"XPlat Code Coverage" --results-directory artifacts/test_results