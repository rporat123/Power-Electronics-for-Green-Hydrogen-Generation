# Project: Power Electronics for Green Hydrogen Generation

Overview
  - The LTSpice produces us with the input voltage for out simulation.
  - The MATLAB script reads electrical simulation data from LTSpice output files and processes it for further analysis. 

Scripts
  - Reads data from a specified .txt file.
  - Extracts time, voltage, and current values.
  - Plots the voltage data for verification.
  - Converts the voltage and current data into Simulink time-series format.
  - Saves the processed data as a .mat file for use in Simulink.

Files
  - ProjectB.m (MATLAB script).
  - Push-Pull Converter.asc (multiple LTSpice files for each configuration).
  - PUSH-PULL 1/2 (PDF files obtained by our supervisor, but don't know the URL for them).
  
Usage
  1. Open and run the LTSpice file (use the wanted configuration).
     Export the data from the LTSpice plot to an output file (.txt).

  2. Open and run MATLAB ProjectB.m.
     The script will obtain the data from the text files, generate a plot for verification of the data and save them.
     Modify the text_file variable to select a different LTSpice output (uncomment a different file name if needed).
     The script saves the processed data output voltage.

  3. Open and run Simulink Electrolyzer.slx
     This file in Simulink uses the voltage_ts time-series variable as the voltage input for the simulation model.
     Look at the scopes to verify that the input voltage for the electrolyzer looks valid and see the output hydrogen production.

Dependencies
  - LTSpice
  - MATLAB
  - Simulink
