#HW#1 - Build Your Portfolio

# Load packages
library(EVR628tools)
library(tidyverse)

data("data_lionfish")

?data_lionfish

# Load data
data(data_lionfish)

# Create a simple plot
p <- ggplot(data_lionfish,
            aes(x = total_length_mm, y = total_weight_gr)) +
  geom_point() +
  facet_wrap(~site)

p

# Save plot
# The above shouldn't work, why?
ggsave(plot = p, filename = "results/figures/first_plot.png")

create.dir = TRUE

p <- ggplot(data_lionfish,
            aes(x = total_length_mm, y = total_weight_gr)) +
  geom_point() +
  facet_wrap(~site) +
  labs(title = "Total Weight by Total Length")
p


p <- ggplot(data_lionfish,
            aes(x = total_length_mm, y = total_weight_gr,)) +
  geom_point() +
  facet_wrap(~site) +
  labs(title = "Lionfish Total Weight by Total Length")
p

