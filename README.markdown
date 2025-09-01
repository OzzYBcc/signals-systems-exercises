# Signals and Systems Exercises

## Overview
This repository contains a set of solved exercises from the "Signals and Systems" course. It includes problem statements provided as image files and corresponding MATLAB scripts that implement solutions for various signal processing and system analysis tasks. Topics covered include Fourier transforms, filtering techniques, system responses, and more, demonstrating practical application of theoretical concepts.

## Technologies
- **Programming Language**: MATLAB
- **Tools**: MATLAB Environment

## Features
- Comprehensive solutions to diverse Signals and Systems problems.
- Clear MATLAB scripts with comments for readability and understanding.
- Problem statements available as images for reference.

## Structure
- **Images**: Folders containing exercise problem statements (e.g., PDFs or scanned images).
- **MATLAB Files**: `.m` files with implemented solutions (e.g., Fourier analysis, system simulation).

## Installation
1. Clone the repository:
   ```
   git clone https://github.com/OzzYBcc/signals-systems-exercises.git
   ```
2. Navigate to the project directory:
   ```
   cd signals-systems-exercises
   ```
3. Ensure MATLAB is installed on your system.
4. Open and run the `.m` files in the MATLAB environment to execute the solutions.

## Usage
- **Example Workflow**: Open an image file to view the problem statement, then run the associated `.m` file to see the solution (e.g., plots or numerical outputs).
- **Sample MATLAB Code (Fourier Transform Example)**:
  ```matlab
  fs = 1000; % Sampling frequency
  t = 0:1/fs:1-1/fs; % Time vector
  x = sin(2*pi*50*t); % Signal
  X = fft(x); % Fourier Transform
  plot(abs(X));
  title('Magnitude Spectrum');
  ```
- Adjust parameters in the scripts as needed to explore different scenarios.

## Contributing
Feel free to suggest improvements or additional exercises! To contribute:
1. Fork the repository.
2. Create a new branch (`git checkout -b new-exercise`).
3. Commit your changes (`git commit -m 'Add new exercise solution'`).
4. Push to the branch (`git push origin new-exercise`).
5. Open a pull request.

## License
MIT License