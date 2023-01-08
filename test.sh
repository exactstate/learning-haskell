for f in ./challenges/*.hs; do
    filename=$(basename "$f")
    ghc $f
    echo "-----------------"
    echo "| $filename |"
    echo "------START------"
    ./challenges/${filename%.*}
    echo "-------END-------"
done