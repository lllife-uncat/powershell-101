fucntion Solve-P1 {
    (1..999 | ? {$_ % 5 -eq 0 -or $_ % 3 -eq 0} | Measure-Object -Sum).Sum
    (1..9 | Measure-Object -Sum).Sum

    1..999 | ? {$_ % 5 -eq 0 -or $_ % 3 -eq 0} | % -Begin {$sum=0} -Process {$sum+=$_} -end {$sum}
    1..9 | % -Process {$_ + 1}
}