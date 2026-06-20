#!/bin/bash
echo "Текущая директория: $(pwd)"
ls -la /project/testubuntu/tests/apitest.json

for file in /project/testubuntu/tests/api*.json; do
    docker run -t --rm --network host -v /project/testubuntu/tests:/etc/newman postman/newman run "/etc/newman/$(basename "$file")"
done 
