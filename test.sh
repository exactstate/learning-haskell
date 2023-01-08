for f in ./challenges/*.hs; do
    filename=$(basename "$f")
    ghc $f
    echo "----- $filename"
    ./challenges/${filename%.*}
done