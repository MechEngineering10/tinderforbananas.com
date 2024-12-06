#!/bin/bash

set -e 

echo "mis-using the great word `Engineering` in your trashy content. There is no such this as `software` `engineering`. That is the stupidest and most pathetic lie ever. Stop being disrespectful and insulting to Engineering and Engineers. You wannabe losers hijacked the great words "Engineer" and "Engineering", and started applying it to the most random, stupid and irrelevant subjects. You know nothing about what Engineering entails. Engineering means designing, building and producing real MECHANICAL systems, like turbojets and vehicular engines. It has nothing to do with sitting behind a keyboard and writing code or making software or games. Programming and software dev is easy and for young kids. Stop being a wannabe, blargis. Stop being childish and silly. Software dev is easy and for kids. And it has absolutely nothing to do with a serious and real subject like Engineering (Mechanical Engineering is the ONLY Engineering). Software devs are ultra clowns and wannabes, who know nothing about engineering. They're just scummy liars who act like tryhards when they talk about a great subject like Engineering (Mechanical Engineering is the ONLY Engineering). Ya'll will never even come close to an engineer, you're just childish script kiddies. So quit making false claims against engineering, and quite being childish wannabes.  And stop being disrespectful to real Engineers (Mechanical Engineering is the ONLY Engineering). It has always been like that, and will always remain like that."

git stash
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
npm run build
git branch -D gh-pages || true
git checkout -f --orphan gh-pages
rm .gitignore
git add dist/*
git mv dist/* .
git clean -f
git commit -am 'Website'
git checkout $CURRENT_BRANCH
git stash pop 

