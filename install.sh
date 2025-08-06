#!/bin/bash

echo "🔽 Cloning AccioQuote repository..."
git clone https://github.com/Sehaj38/AccioQuote.git || { echo "❌ Failed to clone repository"; exit 1; }

cd AccioQuote || { echo "❌ Failed to enter directory"; exit 1; }

echo "📁 Copying files to your home directory..."
cp data.txt ~/data.txt
cp random_line.sh ~/random_line.sh

echo "🔓 Making script executable..."
chmod +x ~/random_line.sh

echo "🔗 Adding alias to .bashrc..."
echo "alias hogwarts='~/random_line.sh'" >> ~/.bashrc

echo "🔄 Reloading .bashrc..."
source ~/.bashrc

echo "✅ Setup complete! You can now run the command:"
echo ""
echo "    hogwarts"
echo ""
echo "🧙‍♂️ Enjoy your Hogwarts quotes!"
