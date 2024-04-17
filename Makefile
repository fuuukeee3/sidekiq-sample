.PHONY: all

all:
	@cat Makefile

build:
	@docker compose build app

up:
	@docker compose up -d

down:
	@docker compose down
