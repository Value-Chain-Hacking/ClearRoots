# ---- Step 1: Install required package (only once) ----
install.packages("gridExtra")  # For layout

# ---- Step 2: Load libraries ----
library(gridExtra)
library(grid)

# ---- Step 3: Define default BMC content ----

kp_text <- "Identify your company’s key partners. What key resources does the company receive from these partners? What key activities are performed? Why do you work with them?"
ka_text <- "What specific key activities are needed to deliver your value proposition? How do you reach markets, maintain relationships, and earn revenue?"
kr_text <- "What key resources are required for your value proposition, channels, customer relationships, and revenue streams?"

vp_text <- "What core value do you deliver to customers? Which problems are you solving? What needs are you satisfying? What makes your offer unique?"

cr_text <- "What type of relationship do you have with customers? How is it integrated? How costly is it? How does it vary across segments?"
ch_text <- "How do you deliver your value proposition? Which channels are most effective? How are they integrated? How are you reaching customers now?"
cs_text <- "Who are your target customers? What are their needs, interests, and behaviors? Are you serving a niche or mass market?"

cost_text <- "What are the major cost drivers in your business? Which key activities and resources are most expensive? Are costs fixed or variable?"
rev_text <- "How does your business earn revenue? What value are customers willing to pay for? What are the pricing models and payment channels?"

# ---- Step 4: Create labeled, wrapped text blocks ----

make_box <- function(title, body, wrap_width = 60) {
  wrapped <- paste(strwrap(paste0(title, "\n\n", body), width = wrap_width), collapse = "\n")
  grid::textGrob(
    wrapped,
    gp = grid::gpar(fontsize = 8),
    just = "left",
    x = 0.01
  )
}

# Create each section
kp <- make_box("Key Partners", kp_text)
ka <- make_box("Key Activities", ka_text)
kr <- make_box("Key Resources", kr_text)
vp <- make_box("Value Proposition", vp_text)
cr <- make_box("Customer Relationships", cr_text)
ch <- make_box("Channels", ch_text)
cs <- make_box("Customer Segments", cs_text)
cost <- make_box("Cost Structure", cost_text)
rev <- make_box("Revenue Streams", rev_text)

# ---- Step 5: Create layout ----

canvas_layout <- gridExtra::grid.arrange(
  kp, ka, kr,
  vp,
  cr, ch, cs,
  cost, rev,
  ncol = 3,
  top = grid::textGrob("Business Model Canvas", gp = grid::gpar(fontsize = 14, fontface = "bold"))
)

# ---- Step 6: Export to PDF ----
pdf("business_model_canvas.pdf", width = 11, height = 8.5)
grid.draw(canvas_layout)
dev.off()

# ---- Step 7: Export to PNG ----
png("business_model_canvas.png", width = 1200, height = 850, res = 150)
grid.draw(canvas_layout)
dev.off()

# ---- Done! ----
cat("✅ Canvas exported to PDF and PNG in this folder:\n", getwd(), "\n")
