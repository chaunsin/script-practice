# 判断系统平台

PLATFORM=""

ifeq ($(OS),Windows_NT)
  PLATFORM="Windows"
else
  ifeq ($(shell uname),Darwin)
    PLATFORM="MacOS"
  else
    PLATFORM="Linux"
  endif
endif

all:
	@echo $(PLATFORM),$(OS),$(shell uname)