install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
format:
	black *.py
	
lint:
	pylint --disable=R,C hello2.py
	
test:
	python -m pytest -vv --cov=hello2 test_hello.py
