###################################################################
# Used Case 1st
# Market Basket Analysis 
###################################################################

library(arules)

library(arulesViz)

library(RColorBrewer)

# Data Loading 
data('Groceries')


head(Groceries@itemInfo,n=12)

inspect(data)

summary(Groceries)

# Applying Apriori Algorithm

rules <- apriori(Groceries,parameter = list(supp = 0.001, conf = 0.80))

inspect(rules[1:10])



# Visualisation


# If didn't work and facing errror as "figure margin too large"
# try to fix buy running below code
# Run this ->   par(mar=c(1,1,1,1))
# If graphics error occur try running -> dev.off()
# else run other visualization as below


# Visualisation_1

plot(rules[1:10],method = "graph",control = list(type = "items"))

# Visualisation_2
plot(rules[1:20],method = "paracoord",control = list(reorder = TRUE))

# Visualisation_3 

arulesViz::plotly_arules(rules)

