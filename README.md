# 🧭 The Lost Digital Expedition: A Linux Treasure Hunt

Welcome to the **Lost Digital Expedition** — an interactive Linux treasure hunt designed to teach basic Linux commands in a fun and engaging way. Get ready to explore, decode, and uncover the digital treasure left by the legendary Dr. Vasquez!

---

## 🏛️ Storyline

Dr. Elena Vasquez, a famous computer scientist, was exploring old digital files when she suddenly disappeared. Before she vanished, she sent one last message saying she found “the greatest treasure of the digital age” hidden deep in the university’s research servers. She left behind clues for anyone clever and brave enough to follow her steps.

---

## 🎮 Your Quest Begins Here!

### 🗺️ Challenge 1: Base Camp Navigation

**📝 Dr. Vasquez's Note:**  
"Welcome, brave explorer! I've left supplies at base camp. You'll need to find the compass to continue your journey."

#### Your Mission:
- Navigate to: `~/digital_expedition/base_camp`
- List what's available in the camp
- Read the `README.txt` file for instructions
- Find the **compass** in the `supplies` directory

**Helpful Commands:** `cd`, `ls`, `cat`

✅ **Success Criteria:** You've found the compass 🧭, and know where to go next!

---

### 🗺️ Challenge 2: The Hidden Chamber

**🧭 Compass Reading:**  
"The ancient directory holds secrets. Navigate to 'archives' when you find it."

#### Your Mission:
- Navigate to the `archives` directory
- Look for **hidden files/directories** (hint: some start with `.)
- Find **Dr. Vasquez's journal**
- Discover the **hidden chamber** and retrieve the **ancient key**

**Helpful Commands:** `cd`, `ls -la`, `cat`

✅ **Success Criteria:** You've found the ancient key and learned about the sphinx!

---

### 🗺️ Challenge 3: The Riddle

**🔑 Ancient Key Message:**  
"The guardian's name is '******'. Find the riddle in the texts directory."

#### Your Mission:
- Go to `archives/texts`
- Search for files related to **The name you found in the ancient key**
- Read the **riddle** and find the answer
- Discover the direction to find **lifecycle information**

**Helpful Commands:** `cd`, `find`, `cat`  
Search Hint: `find . -name "*********"`

✅ **Success Criteria:** You’ve solved the riddle and know it's related to human development!

---

### 🗺️ Challenge 4: The Lifecycle Mystery

**🧠 Riddle Answer:**  
"The answer lies in human development. Seek the 'lifecycle' file in the research directory."

#### Your Mission:
- Navigate to the `research` directory
- Find and read the **lifecycle** file
- Search the **logbook** for mentions of `"HUMAN"`
- Uncover the **vault** clue

**Helpful Commands:** `cd`, `cat`, `grep`  
Search Hint: `grep "HUMAN" logbook.txt`

✅ **Success Criteria:** You've found the logbook entry about the vault permissions!

---

### 🗺️ Challenge 5: The Vault Permissions

**📖 Logbook Entry:**  
"The treasure location is encoded in the permissions of the vault."

#### Your Mission:
- Navigate to the `vault` directory
- Check the permissions of `treasure_map.txt`
- Decode the permissions to find the **room number**
- Read the file to understand the encoding AND get the unlock code

**Helpful Commands:** `cd`, `ls -la`, `cat`  
Permission Hint: Look at the first column of `ls -la`

✅ **Success Criteria:** You've decoded the permissions, found the room, AND have the unlock code!

---

### 🗺️ Challenge 6: The Laboratory Discovery

**🗺️ Treasure Map:**  

#### Your Mission:
- Navigate to `the room`
- Read **Dr. Vasquez's final message**
- Create a txt file as the message said with the exact text
- Go to home directory and run the `check_discovery.sh` script
- 
**Helpful Commands:** `cd`, `cat`, `echo`, `./check_discovery.sh`  
File Hint: `echo "TEXT" > ********.txt`

### 🗺️ Challenge 7: The Final Treasure

**🎉 Validation Success:**  
"The treasure chamber is now accessible!"

#### Your Mission:
- Go to the `treasure_chamber` directory
- Claim your **treasure** and read your **achievement**

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
| `echo "text" > file`     | Create file with text              | `echo "I FOUND THE TREASURE" > file`   |
| `pwd`                    | Show current directory             | `pwd`                                  |
| `./script.sh`            | Run a script                       | `./check_discovery.sh`                 |

---
