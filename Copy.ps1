## copy the code from below location and run once. Its a function that will enable parallelism
https://github.com/RamblingCookieMonster/Invoke-Parallel/blob/master/Invoke-Parallel/Invoke-Parallel.ps1


### Actual you need to execute for parallel copy
### Throttle limit - modify based on how many drives you want to copy at a time

$Drivelist = @(
  'a:\'
  'b:\'
  'c:\'
  'd:\'
)

Invoke-Parallel -InputObject $Drivelist -ScriptBlock {
  Write-verbose "Copying files to $_" -Verbose
   Copy-Item C:\ChrurchFiles $_ -Recurse
} -Throttle 1000


