# Complete the code below

## complete this line
path <- "" # The path where your data files are kept

filenames <- list.files(path = path, pattern = "inflammation.*csv", full.names = TRUE)
filename_max <- "" # filename where the maximum average inflammation patient is found
patient_max <- 0 # index (row number) for this patient in this file
average_inf_max <- 0 # value of the average inflammation score for this patient
for (f in filenames) {
  dat <- read.csv(file = f, header = FALSE)
  dat.means = apply(dat, 1, mean)
  for (patient_index in length(dat.means)){
    patient_average_inf = dat.means[patient_index]
    # Add your code here ...
  }
}
print(filename_max)
print(patient_max)
print(average_inf_max)
