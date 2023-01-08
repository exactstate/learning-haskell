for f in ./challenges/*.hs; do
    ghc $f
done

for f in ./challenges/*.hs; do
    filename=$(basename "$f")
    echo "----- $filename"
    ./challenges/${filename%.*}
done