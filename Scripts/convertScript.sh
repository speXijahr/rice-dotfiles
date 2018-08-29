for FILE in *.webm; do
    ffmpeg -i "${FILE}" -vn -ab 128k -ar 44100 -y "${FILE%.webm}.mp3";
    mkdir originalWebm
    mv "${FILE}" originalWebm/
done;

for FILE in *.m4a; do
    ffmpeg -i "${FILE}" -vn -ab 128k -ar 44100 -y "${FILE%.m4a}.mp3";
    mkdir originalM4a
    mv "${FILE}" originalM4a/
done;

