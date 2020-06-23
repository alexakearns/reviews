digital audio workstation plug ins
electronic music add filters
filter - band pass filter

array of frequencies
[10,45,100,1001],40,1000

upper low limit defaults
shortest is 1 and unlimited length

| In                    | out                 |
| --------------------- | ------------------- |
| [50]                  | [50]                |
| [10]                  | [40]                |
| [10, 50]              | [40, 50]            |
| [5, 60], 10           | [10, 60]            |
| [1001]                | [1000]              |
| [2000, 800], 40, 1500 | [1500, 800]         |
| [10, 45, 100, 1001]   | [40, 45, 100, 1000] |
| []                    | Error               |
