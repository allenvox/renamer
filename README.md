# Renamer - useful bash script for photographers
![GitHub last commit](https://img.shields.io/github/last-commit/allenvox/renamer)<br>
## Features
- Renames files in ascending order.
- Allows setting the starting number for renaming.
- Allows specifying the file type to rename.
## Usage
`./renamer.sh -a <starting_number> -t <filetype>`
### Options
- `-a <starting_number>`: The number from which the renaming should start.
- `-t <filetype>`: The file extension/type to rename without the dot character *(e.g. "JPG", not ".JPG")*.
### Example
To rename all `.JPG` files in the current directory starting from `0001.JPG`, run:
`./renamer.sh -a 1 -t JPG`
## Prerequisites
- Bash shell
## Installation
1. Clone the repository or download the script.
2. Make the script executable:
`chmod +x renamer.sh`
## How It Works
The script uses the `getopts` command to parse the command-line arguments and then renames files using a loop. The new filenames are generated in the format `XXXX.<filetype>` where `XXXX` is a zero-padded number starting from the specified `starting_number`.
