# VIM CHEATSHEET

this cheatsheet is to written in VIM to help me learn VIM.
kind of a meta-cheatsheet!


## GENERAL

### NUMERIC COMMAND MODIFIERS

one of VIM's nice features is the interoperability of the command set.
You can move to the next word using 'w', but you can jump several words
by prepending that with a numeric modifier - i.e '5w' would move you
forward to the 5th word after the cursor


## EDITING TEXT

### ADDING  

i: insert  
r: replace (R - replace mode)  
o: insert text below line (O: above)  
a: append after cursor (A: end of line)  

### DELETING

d: start delete command - followed by...
- n: multiplier  
- w: word  
- d: line  
- h/l: delete character in direction (can use numeric modifier)  
i.e: dd = delete line, d5d = delete 5 lines  


this is  text that I will try use to test deletion

## MOVEMENT

### CURSOR

h,j,k,l: l,d,u,r respectively

### TEXT:
w: move to start of next word (W - ignore punctuation)  
b: move to beginning of word (B ignore punctuation)  
e: move to end of word  
$: move to end of line  
0: move to beginning of line  
gg: move to beginning of document  
G: move to end of document  
^: move to first non-blank character on a line  


## Visual Mode


