#!/bin/bash

source /luigi/.pyenv/bin/activate

nosetests -v luigi/tests/*
