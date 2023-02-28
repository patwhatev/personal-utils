# create video files from an image and song for yt 
ffmpeg -loop 1 -i content/sponge.jpg -i content/drive.mp3 -c:v libx264 -tune stillimage -c:a aac -b:a 192k -pix_fmt yuv420p -shortest drive.mp4

# CONVERT SOME AUDIO FILES
# shopt -s globstar
# for f in ./**/*.flac; do avconv -i "$f" -c:a alac "${f%.*}.m4a" && rm "$f"; done #rm option will remove original .flac

# Grab audio from youtube
# youtube-dl -ci -f "bestaudio[ext=m4a]" https://www.youtube.com/watch?v=XD1XGySdI0k

# trim part of a song
# ffmpeg -ss 0 -i low.m4a -t 5 output.mp3

# CONVERT SOME IMAGES
# cd scans/pngs

# for f in *.png; do  echo "Converting $f"; cp "$f"  "$(date).png"; done
# convert "thing.pdf"  "thing.png"


# tinypng .