# env.sh

env.sh - run a program in an environment config

# Synopsis

	env.sh [ENV] [OPTION]... [-] [NAME=VALUE]... [COMMAND [ARG]...]

# Installation

	make install

# Examples

	echo DIGITALOCEAN_USERDATA=- >> $HOME/env.d/do
	chmod +x $HOME/env.d/do
	env.sh do $SHELL
