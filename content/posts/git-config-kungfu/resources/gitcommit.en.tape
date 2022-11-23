# Where should we write the GIF?
Output gitcommit.en.gif

# Set up a 1200x600 terminal with 46px font.
Set FontSize 20
Set Width 1200
Set Height 600

# Do this to let terminal startup
Hide
Sleep 1s
Ctrl+L
Sleep 1s
Show

# Type a command in the terminal.
Type "touch test-file.txt"
Enter
Sleep 1s
Type "# 👆 Just to have something to commit"
Enter
Sleep 1s
Type "git add test-file.txt"
Enter
Sleep 1s
Type "git commit"

# Pause for dramatic effect...
Sleep 1s

# Run the command by pressing enter.
Enter

Sleep 5s
Down@500ms 2
Sleep 500ms
Type "x"
Right@500ms 5
Sleep 500ms
Type "i"
Type "demo"
Right@500ms 2
Type " a test commit"
Escape
Sleep 5s
Type ":x"
Sleep 1s
Enter

# Pause for dramatic effect...
Sleep 2s
Ctrl+L
Sleep 2s
Hide
Type "git reset --soft HEAD~"
Enter
Type "rm test-file.txt"
Enter
Show
