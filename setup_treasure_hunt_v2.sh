#!/bin/bash
# setup_treasure_hunt.sh

# Create main game directory
mkdir -p ~/digital_expedition
mkdir -p ~/digital_expedition/logs
mkdir -p ~/digital_expedition/archives_2021
mkdir -p ~/digital_expedition/research_backup
mkdir -p ~/digital_expedition/tmp_storage
touch ~/digital_expedition/.hidden_note.txt
echo "Old log entry - not useful." > ~/digital_expedition/logs/old_log.txt
cd ~/digital_expedition

# Level 1: Basic navigation
mkdir -p base_camp/supplies
mkdir -p base_camp/gear
mkdir -p base_camp/notes
mkdir -p base_camp/logs
touch base_camp/logs/log1.txt base_camp/notes/todo.txt
echo "Hello explorer! Dr. Vasquez left a message. Go to the 'supplies' folder. There’s a file called compass.txt." > base_camp/README.txt
echo "🧭 COMPASS READING: The old folder holds secrets. Go to '~/digital_expedition/archives'." > base_camp/supplies/compass.txt

# Level 2: Hidden files and directories
mkdir -p archives
mkdir -p archives/photos
mkdir -p archives/maps
mkdir -p archives/videos
touch archives/photos/image1.jpg archives/maps/treasure_map.jpg
mkdir -p archives/.hidden_room
echo "Dr. Vasquez wrote in her journal: 'Some folders are hidden. Look for a hidden one to find the next clue.'" > archives/journal.txt
echo "🗝️ ANCIENT KEY: The guardian's name is 'sphinx'. Find the riddle in the folder: '~/digital_expedition/archives/texts'." > archives/.hidden_room/ancient_key.txt

# Level 3: File searching
mkdir -p archives/texts
mkdir -p archives/texts/scrolls
mkdir -p archives/texts/manuscripts
mkdir -p archives/texts/fragments
mkdir -p archives/texts/diagrams
mkdir -p archives/texts/letters
touch archives/texts/diagrams/chart.svg
touch archives/texts/letters/vazquez_letter.txt
echo "What walks on four legs in the morning, two legs at noon, and three legs in the evening?" > archives/texts/scrolls/riddle_of_sphinx.txt
echo "Hint: This is about how a human grows. Find the file 'lifecycle.txt' in '~/digital_expedition/research'" > archives/texts/scrolls/riddle_of_sphinx.txt
echo "Random notes about old history..." > archives/texts/manuscripts/history.txt
echo "A small piece of old code..." > archives/texts/fragments/code.txt

# Level 4: Content searching with grep
mkdir -p research
mkdir -p research/data
mkdir -p research/old_files
touch research/data/file1.csv research/old_files/backup.txt
echo "A human crawls as a baby, walks as an adult, and uses a cane when old." > research/lifecycle.txt
echo "Dr. Vasquez said: The answer is HUMAN. Search for the word HUMAN in the logbook.txt" >> research/lifecycle.txt
echo "Day 1: Started the journey" > research/logbook.txt
echo "Day 2: Found cool stuff" >> research/logbook.txt
echo "Day 3: Discovered HUMAN origins. Go to '~/digital_expedition/vault'" >> research/logbook.txt
echo "Day 4: The treasure location is hidden in the permissions of a file in the vault folder" >> research/logbook.txt

# Level 5: File permissions
mkdir -p vault
mkdir -p vault/reports
mkdir -p vault/tmp
touch vault/reports/report1.doc vault/tmp/cache.tmp
echo "Go to folder '~/digital_expedition/laboratory/room744'" >> vault/treasure_map.txt
echo "🔓 CODE: 600" >> vault/treasure_map.txt
echo "" >> vault/treasure_map.txt
echo "Dr. Vasquez wrote: Use this code to unlock the final message." >> vault/treasure_map.txt
echo "Use this command: chmod 600 [filename]" >> vault/treasure_map.txt
chmod 744 vault/treasure_map.txt

# Level 6: Advanced navigation and file creation
mkdir -p laboratory
for i in {720..750}; do
    mkdir -p "laboratory/room$i"
done
echo "🎯 Dr. Vasquez's final message:" > laboratory/room744/final_clue.txt
echo "Congratulations! You've successfully used the unlock code from the treasure map!" >> laboratory/room744/final_clue.txt
echo "" >> laboratory/room744/final_clue.txt
echo "Your final task: Create a file called 'discovery.txt' with the text:" >> laboratory/room744/final_clue.txt
echo "I FOUND THE TREASURE" >> laboratory/room744/final_clue.txt
echo "" >> laboratory/room744/final_clue.txt
echo "This will unlock the treasure room where your prize awaits!" >> laboratory/room744/final_clue.txt
echo "After you’ve created the discovery.txt file, run ./check_discovery.sh to unlock the treasure room. " >> laboratory/room744/final_clue.txt
chmod 000 laboratory/room744/final_clue.txt

# Create validation script
cat > check_discovery.sh << 'EOF'
#!/bin/bash
if [ -f "laboratory/room744/discovery.txt" ]; then
    if grep -q "I FOUND THE TREASURE" laboratory/room744/discovery.txt; then
        echo "🎉 SUCCESS! The treasure room is now accessible!"
        echo "Go to ~/digital_expedition/treasure_room and claim your prize!"
        # Level 7: Final treasure is created now
        mkdir -p treasure_room
        echo "CONGRATULATIONS! You've found Dr. Vasquez's greatest discovery!" > treasure_room/TREASURE.txt
        echo "The real treasure was the Linux skills you learned along the way!" >> treasure_room/TREASURE.txt
        echo "🏆 ACHIEVEMENT UNLOCKED: Digital Archaeological Expert!" >> treasure_room/TREASURE.txt

        chmod 755 treasure_room
    else
        echo "❌ The discovery file doesn't contain the correct message."
    fi
else
    echo "❌ Discovery file not found. Create it first!"
fi
EOF
chmod +x check_discovery.sh

echo "🎮 Digital Expedition treasure hunt setup complete!"
echo "Starting location: ~/digital_expedition/base_camp"