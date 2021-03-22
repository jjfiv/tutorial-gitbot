# Git Tutorial with gitbot
A bot that must have the last word makes for a decent git tutorial.

## Independent Working Instructions:

1. Get write access to this repository (need your github handle).
1. Clone this repository.
2. Make a new file that is just yours!
```bash
cp jjfoley.py $USER.py
```
3. Add and commit!
```bash
git add $USER.py
git commit -m "Made a file for myself!"
```
4. Send your changes to github. Until it is successful: (maybe pick a different filename if it's already used)!
```bash
git pull
git push
```
5. Observe ``last-word-bot`` committing the time over you.
6. Practice editing the file and dealing with the need to pull and push to get your changes into ``master``.

## Merge Conflict Practice

1. Find a partner.
1. Choose one of your files to work on.
1. Both edit the same file (one add a comment at top, one add at the bottom.)
1. Choose one of you to win.
1. commit, (push/pull)+
1. Go back and let the other one try. See that Git can resolve some changes automatically!
1. Now go back, and both try again, editing the same lines. See how it gives up and gives you all the information it can into the file? Choose a winner, delete all the "ascii art <<<< ==== >>>>" and commit, (push/pull)+.

## How does it work?

``last-word-bot`` is a script in python/bash that pulls from the git repository and submits a timestamp update if it has changed. It has infinite patience and will get the last word.
