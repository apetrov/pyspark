pip-install:
				pip3 install -r requirements.txt -t ./src/lib

build:
				mkdir -p ./dist
				cp ./src/main.py ./dist
				cd ./src && zip -x main.py -r ../dist/jobs.zip .
				cp ./src/main.py ./dist
			  cd ./src && zip -x main.py -x \*lib\* -r ../dist/jobs.zip .
				cd ./src/lib && zip -r ../../dist/libs.zip .
