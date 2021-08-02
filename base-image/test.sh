#!/bin/bash

test_docker_run_usage() {
	echo "Testing 'docker run' usage..."
	docker run --rm tutorial/fedora-base:latest &>/dev/null
}

check_result() {
	local result="$1"
	if [[ "$result" != "0" ]]; then
		echo "Image tutorial/fedora-base:latest test FAILED (exit code: ${result})"
		exit $result
	fi
}

# Verify the 'usage' script is working properly when running the base image with 'docker run ...'
test_docker_run_usage
check_result $?
