#!/bin/bash
set -ex

rm -rf "${SRC_DIR}/srsly/cloudpickle"
rm -rf "${SRC_DIR}/srsly/ujson"
rm -rf "${SRC_DIR}/srsly/ruamel_yaml"

# Won`t run tests for these modules, they are tested in their meta.yaml recipes:
rm -rf "${SRC_DIR}/srsly/tests/cloudpickle"
rm -rf "${SRC_DIR}/srsly/tests/ujson"
rm -rf "${SRC_DIR}/srsly/tests/ruamel_yaml"

${PYTHON} -m pip install . -vv --no-deps --no-build-isolation