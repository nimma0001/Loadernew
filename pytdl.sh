#getting data server
#downloading yt-playlist 480,720,1080
mkdir -p ytplaylist
echo downloading 480p
yt-dlp -f 'bv*[height=480]+ba' $1 -P ytplaylist -o '%(title)s%(resolution)s.%(ext)s'
#uplpading 480p
cd ytplaylist && ls -tr | sed ':g' > playlist.txt
input="playlist.txt"
echo uploading 480p
while IFS= read -r line
do
  echo "$line"
  #uploading to gofile
  curl https://pixeldrain.com/api/file/ -u:8e312a99-f6af-4e4d-bd43-04721db3fb61 --upload-file "$line"; \
done < "$input"
rm -rf ytplaylist/*

cd

echo "done 480p"
#uploading 720p
echo downloading 72p
yt-dlp -f 'bv*[height=720]+ba' $1 -P ytplaylist -o '%(title)s%(resolution)s.%(ext)s'
#uplpading 480p
cd ytplaylist && ls -tr | sed ':g' > playlist.txt
input="playlist.txt"
echo uploading 720p
while IFS= read -r line
do
  echo "$line"
  #uploading to gofile
  curl https://pixeldrain.com/api/file/ -u:8e312a99-f6af-4e4d-bd43-04721db3fb61 --upload-file "$line"; \
done < "$input"
rm -rf ytplaylist/*
echo "done 720p"

cd

#uploadong 1080p
mkdir -p ytplaylist
echo downloading 1080p
yt-dlp -f 'bv*[height=1080]+ba' $1 -P ytplaylist -o '%(title)s%(resolution)s.%(ext)s'
#uplpading 480p
cd ytplaylist && ls -tr | sed ':g' > playlist.txt
input="playlist.txt"
echo uploading 1080p
while IFS= read -r line
do
  echo "$line"
  #uploading to gofile
  curl https://pixeldrain.com/api/file/ -u:8e312a99-f6af-4e4d-bd43-04721db3fb61 --upload-file "$line"; \
done < "$input"
rm -rf ytplaylist/*
echo "done 1080p"

cd
