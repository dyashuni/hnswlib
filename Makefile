pypi: dist
	twine upload dist/*

dist:
	-rm dist/*
	python3 -m pip install build
	python3 -m build -n --sdist

test:
	python3 -m unittest discover --start-directory python_bindings/tests --pattern "*_test*.py"

clean:
	rm -rf *.egg-info build dist tmp var tests/__pycache__ hnswlib.cpython*.so

.PHONY: dist
