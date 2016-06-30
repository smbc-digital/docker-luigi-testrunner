#!/bin/bash

source /luigi/.pyenv/bin/activate

exec nosetests tests
