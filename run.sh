git clone https://github.com/chupino/resultvoting.git result
cd result

docker build -t result .

if [ $? -eq 0 ]; then
    echo "bien"
else
    echo "mal"
    exit 1
fi

docker run -dp 8000:80 --name=result-app result