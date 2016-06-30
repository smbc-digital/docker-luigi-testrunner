#!/bin/bash

source /luigi/.pyenv/bin/activate

nosetests -v luigi/tasks/tests
