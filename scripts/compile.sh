#!/bin/zsh

function c()
{
	clang++ $1.cpp -o $1 -std=c++11 -O2
}

function db()
{
	clang++ $1.cpp -o $1 -std=c++11 -DDEBUG -D_GLIBCXX_DEBUG -g -ggdb -fsanitize=address,undefined
}
