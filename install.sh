 #!/bin/bash
 
# apt update
# apt upgrade

# conda remove ffmpeg -y

# apt install libgl1 libglib2.0-0 ffmpeg gcc build-essential nginx -y
# apt install software-properties-common
# apt install python3-launchpadlib
# apt update


cd
cd /home/
git clone https://github.com/Shakil-Alam76/bit_IOPaint.git
cd bit_IOPaint

python -m venv venv_name
source venv_name/bin/activate 

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash 
\. "$HOME/.nvm/nvm.sh" 
nvm install 22 
# node -v 
# nvm current
# npm -v 
cd web_app
npm install 
npm run build 

cp -r /home/bit_IOPaint/web_app/ /home/bit_IOPaint/iopaint
cd /home/bit_IOPaint
pip install -r requirements.txt 
python3 main.py start --model=lama --port=8001 --model=andregn/Realistic_Vision_V3.0-inpainting --host=0.0.0.0