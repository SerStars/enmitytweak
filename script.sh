#!/bin/sh
filename=$(curl -sL https://ipa.aspy.dev/discord/testflight/ | grep ipa | tail -n 2 | cut -f 2 -d '>' | cut -f 1 -d '<')
discord_ipa_url="https://ipa.aspy.dev/discord/testflight/${filename:1}"
echo "discord_ipa_url=${discord_ipa_url}" >> $GITHUB_ENV
echo "DISCORD_VERSION=TF_${filename:1}" >> $GITHUB_ENV
