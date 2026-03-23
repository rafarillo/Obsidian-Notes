#!/bin/bash

# Script to create folders and markdown files for study material organization
# Usage: ./CreateMDFolderStructure.sh {path} {maxNumber} {discipline}

# Check if correct number of arguments provided
if [ $# -ne 3 ]; then
    echo "Usage: $0 {path} {maxNumber} {discipline}"
    exit 1
fi

path="$1"
maxNumber="$2"
discipline="$3"

# Validate maxNumber is a positive integer
if ! [[ "$maxNumber" =~ ^[0-9]+$ ]]; then
    echo "Error: maxNumber must be a positive integer"
    exit 1
fi

# Validate that path exists
if [ ! -d "$path" ]; then
    echo "Error: path '$path' does not exist"
    exit 1
fi

echo "Creating folder structure in: $path"
echo "Discipline: $discipline"
echo "Number of folders: $maxNumber"
echo "---"

# Loop from 1 to maxNumber
for ((i = 1; i <= maxNumber; i++)); do
    folder_name="Aula$i"
    folder_path="$path/$folder_name"
    
    # If folder exists, skip to next iteration
    if [ -d "$folder_path" ]; then
        echo "→ Folder already exists: $folder_path (skipping)"
        continue
    fi
    
    # Create folder
    mkdir -p "$folder_path"
    echo "✓ Created folder: $folder_path"
    
    # Create FlashCards.md
    flashcards_file="$folder_path/FlashCards.md"
    echo "#flashcards/$discipline/$folder_name" > "$flashcards_file"
    echo "  ✓ Created: FlashCards.md"
    
    # Create Resumo.md
    resumo_file="$folder_path/Resumo.md"
    touch "$resumo_file"
    echo "  ✓ Created: Resumo.md"
done

echo "---"
echo "Done!"
