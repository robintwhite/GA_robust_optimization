# GA_robust_optimization
Final project for course, investigating implementation of robust optimization
Uses a variance penalty to determine robust locations of objective function. 
Run by ga_r.m
Update myfun, constraint and object class to customize for function. 

Issues.
No implementation for variance included in constraints.
Since variance is used, for low variance locations corresponding to small function values this may result in an uneven bias when comparing to higher variance but larger function values. There is a q value which can be used to increase the sensitivity however using correlation or normalization to find robust optimum could provide better results.

See report for full details.
