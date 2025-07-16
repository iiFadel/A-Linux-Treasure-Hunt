# 🧭 The Lost Digital Expedition: A Linux Treasure Hunt

Welcome to the **Lost Digital Expedition** — an interactive Linux treasure hunt designed to teach basic Linux commands in a fun and engaging way. Get ready to explore, decode, and uncover the digital treasure left by the legendary Dr. Vasquez!

---

## 🏛️ Storyline

Dr. Elena Vasquez was working on secret research when she suddenly disappeared. Her last message said she found “the greatest treasure of the digital age.” She left clues hidden in the university server. Your job is to follow the trail and find the treasure!

---

🎮 How It Works

Each Challenge will ask you to:
	•	Go to a folder
	•	Look at files
	•	Read messages
	•	Use simple Linux commands

Use the Command Help at the bottom if you get stuck!

## 🎮 Your Quest Begins Here!

### 🗺️ Challenge 1: Base Camp

**📝 Dr. Vasquez's Note:**  
“Welcome, explorer! Go to the base camp and look in the supplies. You’ll need the compass to begin.”

#### Your Mission:
- Go to this folder: `~/digital_expedition/base_camp`
- List the files in the camp
- Read the `README.txt` file for instructions
- Find the **compass.txt** in the `supplies` folder

**Helpful Commands:** `cd`, `ls`, `cat`

✅ **Success Criteria:** You've found the compass 🧭, and know where to go next!

---

### 🗺️ Challenge 2: The Hidden Room

**🧭 Compass Reading:**  
“The next clue is in an old folder. Some things are hidden.”

#### Your Mission:
- Go to the folder the compass showed you: `FROM CHALLANGE 1`
- Look for **hidden folders** (hint: it start with `.)
- Go inside the hidden folder and read the ancient_key.txt

**Helpful Commands:** `cd`, `ls -la`, `cat`

✅ **Success Criteria:** You've found the ancient key and have the guardian name!

---

### 🗺️ Challenge 3: The Riddle

#### Your Mission:
- Go to the folder you got from the ancient_key: `FROM CHALLANGE 2`
- Search for files related to **The name you found in the ancient key**
- Find and read a file with a riddle about the sphinx (Hint: `cat directory`)
- The riddle will tell you where to go next

**Helpful Commands:** `cd`, `find`, `cat`  
Search Hint: `find . -name "*********"`

✅ **Success Criteria:** You’ve solved the riddle!

---

### 🗺️ Challenge 4: The Lifecycle Mystery

#### Your Mission:
- Go to the folder you got from the riddle: `FROM CHALLANGE 3`
- Find and read the **lifecycle** file
- Search the **logbook** for mentions of `"HUMAN"`

**Helpful Commands:** `cd`, `cat`, `grep`  
Search Hint: `grep "HUMAN" logbook.txt`

✅ **Success Criteria:** You've found the logbook entry about the vault permissions!

---

### 🗺️ Challenge 5: The Vault Permissions

#### Your Mission:
- Go to the folder you got from the vault: `FROM CHALLANGE 4`
- Read the details of the file called `treasure_map.txt`
- Find the **room number**
- Figure out the code number you need to unlock the treasure room

**Helpful Commands:** `cd`, `ls -la`, `cat`  
Permission Hint: Look at the first column of `ls -la`

✅ **Success Criteria:** You've Found the room AND have the unlock code!

---

### 🗺️ Challenge 6: The Laboratory Discovery

**🗺️ Treasure Map:**  

#### Your Mission:
- Go to the folder you got from the laboratory: `FROM CHALLANGE 5`
- Unlock the file using the code `FROM CHALLANGE 5`
- Read **Dr. Vasquez's final message** - file called `final_clue.txt`
- Create a txt file as the message said with the exact text
- Go to home directory `~/` and run the `./check_discovery.sh` script to check your answer
- 
**Helpful Commands:** `cd`, `cat`, `chmod`, `echo`, `./check_discovery.sh`
Hint: `chmod [CODE] [final_clue.txt]`
Hint: `echo "TEXT" > ********.txt`

### 🗺️ Challenge 7: The Final Treasure

**🎉 Validation Success:**  
"The treasure chamber is now accessible!"

#### Your Mission:
- Go to the folder: `~/digital_expedition/treasure_room`
- Read the file `TREASURE.txt` to see your reward and achievement!

**Helpful Commands:** `cd`, `cat`

✅ **Success Criteria:** The script confirms your discovery!


---

## 📚 Command Reference Card

| Command                  | Purpose                            | Example                                |
|--------------------------|------------------------------------|----------------------------------------|
| `cd directory`           | Change directory                   | `cd base_camp`                         |
| `ls`                     | List files                         | `ls`                                   |
| `ls -la`                 | List all files (incl. hidden)      | `ls -la`                               |
| `cat file`               | Display file contents              | `cat README.txt`                       |
| `find . -name "pattern"` | Search for files                   | `find . -name "*sphinx*"`              |
| `grep "text" file`       | Search for text in a file          | `grep "HUMAN" logbook.txt`             |
| `echo "text" > file`     | Create file with text              | `echo "Hi" > file.txt`   |
| `pwd`                    | Show current directory             | `pwd`                                  |
| `./script.sh`            | Run a script                       | `./check_discovery.sh`                 |

---
