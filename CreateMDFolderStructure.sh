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
    
    # Create folder if it doesn't exist
    if [ ! -d "$folder_path" ]; then
        mkdir -p "$folder_path"
        echo "✓ Created folder: $folder_path"
    else
        echo "→ Folder already exists: $folder_path"
    fi
    
    # Create FlashCards.md
    flashcards_file="$folder_path/FlashCards.md"
    if [ ! -f "$flashcards_file" ]; then
        echo "#flashcards/$discipline/$folder_name" > "$flashcards_file"
        echo "  ✓ Created: FlashCards.md"
    else
        echo "  → FlashCards.md already exists"
    fi
    
    # Create Resumo.md
    resumo_file="$folder_path/Resumo.md"
    if [ ! -f "$resumo_file" ]; then
        touch "$resumo_file"
        echo "  ✓ Created: Resumo.md"
    else
        echo "  → Resumo.md already exists"
    fi
done

echo "---"
echo "Done!"
