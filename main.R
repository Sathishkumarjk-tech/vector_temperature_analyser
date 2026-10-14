# Vector Temperature Analyzer
# Run: source("main.R")

days <- c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun")
temperature <- c(29.5, 31.0, 30.2, 28.7, 32.4, 33.1, 29.8)

fahrenheit <- temperature * 9 / 5 + 32
report <- data.frame(
  Day = days,
  Celsius = temperature,
  Fahrenheit = round(fahrenheit, 2)
)

cat("\n--- WEEKLY TEMPERATURE REPORT ---\n")
print(report, row.names = FALSE)
cat("\nAverage temperature:", round(mean(temperature), 2), "C\n")
cat("Hottest day:", days[which.max(temperature)], "-", max(temperature), "C\n")
cat("Coldest day:", days[which.min(temperature)], "-", min(temperature), "C\n")
cat("\nTemperatures above 30 C:\n")
print(temperature[temperature > 30])
cat("\nSequence:", seq(20, 35, by = 5), "\n")
cat("Absolute deviations from average:", round(abs(temperature - mean(temperature)), 2), "\n")

write.csv(report, "temperature_report.csv", row.names = FALSE)
cat("\nReport saved to temperature_report.csv\n")
