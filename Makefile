FUNC_TEST_DIR='test/functional'
UNIT_TEST_DIR='test/unit'
#docs:
#	sphinx-build -b html -d build/docs/doctrees docs build/docs/html

init_submodules:
	git submodule init
	git submodule update

update_submodules:
	git submodule foreach git pull

set_settings:
	cp -f config/settings.py.sample config/settings.py

test: set_settings
	nosetests -w ${FUNC_TEST_DIR}
	nosetests -w ${UNIT_TEST_DIR}

test_all: set_settings test_27 test_33

test_27: set_settings
	nosetests-2.7 -w ${FUNC_TEST_DIR}
	nosetests-2.7 -w ${UNIT_TEST_DIR}

test_33: set_settings
	nosetests-3.3 -w ${FUNC_TEST_DIR}
	nosetests-3.3 -w ${UNIT_TEST_DIR}

clean:
	find . -name '__pycache__' -exec rm -rf {} +
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '._*' -exec rm -f {} +

clean_env: clean
	rm -r bin include lib local man

.PHONY: init_submodules update_submodules test test_all test_27 test_33 clean
