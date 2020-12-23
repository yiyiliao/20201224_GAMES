ARGS="-pix_fmt yuv420p -c:v libx264 -movflags +faststart -filter:v crop='floor(in_w/2)*2:floor(in_h/2)*2'"

root=$PWD
cd raw

for d in *; do

    cd $d
    for f in *.mp4; do
        ffmpeg -y -i $f $ARGS $root/$d/$f
    done
    cd ..
done

cd $root
