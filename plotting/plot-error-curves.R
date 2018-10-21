# -------------------------------------------------------------------------------------------------- #
# Plot Error Curves
# 
# A script to plot error curves between a series of compressed animations
# 
# Some plotting code taken from:
#    https://www.r-bloggers.com/styling-base-r-graphics/
#
#
# Richard Roberts
# -------------------------------------------------------------------------------------------------- #



# -------------------------------------------------------------------------------------------------- #
# Dependencies

library(glue)
require('gtools')

#
# -------------------------------------------------------------------------------------------------- #



# -------------------------------------------------------------------------------------------------- #
# Configuration
#
# Colors are set to match Moveshelf examples (https://moveshelf.com)

DATA_DIRECTROY <- "../data/"

# "#c57e47" # (original)
COLORS = c( 
  "#dddb72", # (compressed @ ~80.00)
  "#68cfd0", # (compressed @ ~90.00)
  "#c42219", # (compressed @ ~95.00)
  "#bf42c8"  # (compressed @ ~97.50)
)

ERROR_SCALING <- 10 # (converts from `cm` to `mm`)

#
# -------------------------------------------------------------------------------------------------- #



# -------------------------------------------------------------------------------------------------- #
# I/O

gatherExamples <- function() {
  examples <- list.dirs(path=DATA_DIRECTROY, full.names = FALSE)
  return(examples[examples!=""])
}

gatherFilesInExample <- function(example) {
  files <- list.files(
    path = paste(c(DATA_DIRECTROY, example), collapse = "/"),
    full.names = FALSE,
    pattern = "*.csv"
  )
  files <- files[files != "meta.csv"]
  files <- mixedsort(files)
  return(files)
}

#
# -------------------------------------------------------------------------------------------------- #


# -------------------------------------------------------------------------------------------------- #
# Error calculation 

# Error as the largest distance between any two joints
getErrorCurveMaxBetweenJoints <- function(a, b) {
  errors <- numeric()
  nFrames <- nrow(a)
  nDimensions <- ncol(a)
  nJoints <- nDimensions / 3
  
  for (i in 1:nFrames) {
    errorMax <- 0
    
    poseA <- as.numeric(a[i,])
    poseB <- as.numeric(b[i,])
    
    for (j in 1:nJoints) {
      ix <- (j - 1) * 3
      
      jointA <- c(poseA[ix + 1], poseA[ix + 2], poseA[ix + 3])
      jointB <- c(poseB[ix + 1], poseB[ix + 2], poseB[ix + 3])
      jointDist <- dist(rbind(jointA, jointB))
      
      if (jointDist > errorMax) {
        errorMax <- jointDist
      }
    }
    
    scaledErrorMax = errorMax * ERROR_SCALING # convert to mm
    errors <- c(errors, scaledErrorMax)
  }
  return(errors)
}


# Computes error as a curve between each compressed animation and the original, and
# returns the set of these curves as a list.
getErrorCurvesForExample <- function(example) {  
  
  # Read all the files involved
  files <- gatherFilesInExample(example)
  
  # Get the "original"and use it as the base line
  original <- read.csv(paste(c(DATA_DIRECTROY, example, files[1]), collapse = "/"))
  
  # Compute each curve 
  curves <- list()
  for (i in 2:length(files)) {
    file <- read.csv(paste(c(DATA_DIRECTROY,example,files[i]), collapse = "/"))
    curve <- getErrorCurveMaxBetweenJoints(original, file)
    curves[[i-1]] <- curve
  }
  
  return(curves)
}

#
# -------------------------------------------------------------------------------------------------- #



# -------------------------------------------------------------------------------------------------- #
# Other utilites

nKeyframesFromFilename <- function(filename) {
  parts <- strsplit(filename, "-")[[1]]
  nKeyframes <- strtoi(parts[2])
  return(nKeyframes)
}

calculateCompressionLevel <- function(nKeyframes, nFrames) {
  return(100 - nKeyframes / nFrames * 100.0)
}

getLegendNamesForExample <- function(example) {
  # Grab the files for this exmaple
  files <- gatherFilesInExample(example)

  # Calculate total number of frames
  original <- read.csv(paste(c(DATA_DIRECTROY, example, files[1]), collapse = "/"))
  nFrames <- nrow(original)
  legendNames = character()
  
  # Iterate each of the compressed animations and create a name,
  # which includes the number of keyframes and the compression level
  for (i in 2:length(files)) {
    nKeyframes <- nKeyframesFromFilename(files[i])
    compression <- calculateCompressionLevel(nKeyframes, nFrames)
    legendName <- glue("N={nKeyframes}, C={round(compression, digits=2)}%")
    legendNames[i-1] = legendName
  }
  legendNames = as.character(legendNames)
  return(legendNames)
}

#
# -------------------------------------------------------------------------------------------------- #



# -------------------------------------------------------------------------------------------------- #
# Plotting

startPDF <- function(example) {
  filepath <- paste(c(DATA_DIRECTROY, example, "error-curves.pdf"), collapse = "/")
  pdf(filepath,width=16,height=9,paper='special')
}

startPNG <- function(example) {
  filepath <- paste(c(DATA_DIRECTROY, example, "error-curves.png"), collapse = "/")
  png(filepath,width=1600,height=500)
}

plotErrorCurvesForExample <- function(example, savePDF, savePNG) {
  
  # Start the file for the plotting (only when saving the output)
  if (savePDF) { startPDF(example) }
  if (savePNG) { startPNG(example) }
  
  # Grab meta information (used later during plotting)
  meta <- read.csv(paste(c(DATA_DIRECTROY, example, "meta.csv"), collapse = "/"))

  # Grab the error curves for this example
  errorCurves <- getErrorCurvesForExample(example)
  
  # Calculate the range of y-values
  minY <- 0
  allErrors <- numeric()
  for (i in 1:length(errorCurves))
  allErrors <- c(allErrors, errorCurves[[i]])
  maxY <- max(allErrors) + 2 * ERROR_SCALING
  
  # Configure the plot (must be done before starting the plot)
  par(
    las = 1,  # Rotate y-axis text
    xaxs = "i", yaxs = "i" # Remove plot padding
  )
  
  # Start the plot
  plot(
    0, 0, 
    xlab = "", ylab = "", # remove the default labels
    axes = FALSE, # remove the default axis
    frame.plot = FALSE, # remove the default frame (box around the graph)
    xlim = c(meta$start - 1, meta$end + 1), ylim = c(minY-1, maxY+1), # set the limits
    panel.first = abline(h = seq(minY, round(maxY), 10), col = "grey80") # draw horizontal lines
  )
  
  # Set the title
  name <- paste(c("Error Curves at Compression Levels", as.character(meta$title)), collapse = ", ")
  title(main=name, cex=1,  col= "grey20", line=1)
  
  # Set custom- axis
  at = seq(meta$start, meta$end, 10)
  mtext(side = 1, text = at, at = at, col = "grey20", line = 0.5, cex = 1.0)
  title(xlab = "Frame Number", mgp=c(2,0,0), cex.lab=1.2)
  
  # Set custom y-axis
  at = seq(minY, maxY, 50)
  mtext(side = 2, text = at, at = at, col = "grey20", line = 0.4, cex = 1.0)
  title(ylab = "Maximum Error Per Joint (mm)", mgp=c(2.5,0,0),cex.lab=1.2)
  
  # Plot the error curves
  for (i in 1:length(errorCurves)) {
    lines(meta$start:meta$end, errorCurves[[i]], col = COLORS[i], type="o", pch=20)
  }
  
  # Construct names for legend (each includes number of keyframes and compression amount)
  legend(
    meta$start + (meta$end - meta$start) / 100, maxY, # set the position
    legend=getLegendNamesForExample(example), # set the names
    col=COLORS, # use colors (defined in config at top of file)
    lwd=2, # line width
    bg="white" # set background
  )
  
  # Close the file (only when saving the output)
  if (savePDF || savePNG) { dev.off()  }
}

#
# -------------------------------------------------------------------------------------------------- #



# -------------------------------------------------------------------------------------------------- #
# Logging functions

logMaximumErrors <- function(example, original) {
  files <- gatherFilesInExample(example)
  
  # Compute error curves
  for (i in 2:length(files)) {
    file <- read.csv(paste(c(DATA_DIRECTROY, example, files[i]), collapse = "/"))
    errorCurve <- getErrorCurveMaxBetweenJoints(original, file)
    eMax <- max(errorCurve)
    eMaxRounded <- round(eMax, digits=2)
    print(glue("{example}: {files[i]} gives maximum error = {eMaxRounded}"))
  }
}

logAverageErrors <- function(example, original) {
  files <- gatherFilesInExample(example)
  
  # Compute error curves
  nFrames <- nrow(original)
  
  for (i in 2:length(files)) {
    file <- read.csv(paste(c(DATA_DIRECTROY, example, files[i]), collapse = "/"))
    errorCurve <- getErrorCurveMaxBetweenJoints(original, file)
    eSum <- sum(errorCurve) / nFrames
    eSumRounded <- round(eSum, digits=2)
    print(glue("{example}: {files[i]} gives average error = {eSumRounded}"))
  }
}

#
# -------------------------------------------------------------------------------------------------- #



# -------------------------------------------------------------------------------------------------- #
# Top-level execution

runExample <- function(example, savePDF, savePNG, logErrorInformation) {
  plotErrorCurvesForExample(example, savePDF, savePNG)  
  
  if (logErrorInformation) {
    files <- gatherFilesInExample(example)
    original <- read.csv(paste(c(DATA_DIRECTROY, example, files[1]), collapse = "/"))
    logMaximumErrors(example, original)
    logAverageErrors(example, original)
  }
}

run <- function(savePDF, savePNG, logErrorInformation) {
  examples <- gatherExamples()
  for (i in 1:length(examples)) {
    example <- examples[i]
    runExample(example, savePDF, savePNG, logErrorInformation)
  }
}

run(TRUE, FALSE, FALSE) # Save plots as PDFs
run(FALSE, TRUE, FALSE) # Save plots as PNGs
run(TRUE, FALSE, TRUE) # Log error info

#
# -------------------------------------------------------------------------------------------------- #

