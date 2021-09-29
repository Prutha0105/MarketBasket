Library(“arules”)
Library(“arulesViz”)

rules<-apriori(data=Groceries, parameter=list(supp=0.001,conf = 0.15,minlen=2), 
               appearance = list(default="rhs",lhs="whole milk"),
               control = list(verbose=F))
rules<-sort(rules, decreasing=TRUE,by="confidence")
inspect(rules[1:5])

library(arulesViz)
plot(rules,method="graph",interactive=TRUE,shading=NA)
