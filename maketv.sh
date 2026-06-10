for file in {002..418}.jpg; do
    if [ -f "$file" ]; then
        echo "Кадр $file"

        python3 sstv_encode.py --mode robot72 "$file" e.wav
        python3 sstv_decode.py --mode robot72 e.wav "$file"

        rm e.wav
    else
        echo "Кадр $file не найден. Проверь в начале, там нужно менять в зависимости от к-ва кадров."
    fi
done
