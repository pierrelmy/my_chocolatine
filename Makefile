##
## EPITECH PROJECT, 2024
## Makefile
## File description:
## Makefile
##

CFLAGS  =   -W -Wall -Wextra -Werror

CPPFLAGS  = -I./includes

## all .c except the ones in the tests folder
SRC := $(filter-out ./tests/%, $(shell find -name "*.c"))

TEST_SRC := $(filter-out ./main.c, $(shell find -name "*.c"))

OBJ =   $(SRC:.c=.o)

TEST_OBJ = $(TEST_SRC:.c=.o)

NAME    =  execute

TEST_NAME = unit_tests

all:	$(NAME)

$(NAME):	$(OBJ)
	$(CC) $(OBJ) -o $(NAME)

tests_run:
	$(CC) $(TEST_SRC) -o $(TEST_NAME) -lcriterion --coverage -I./includes
	./$(TEST_NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)
	$(RM) $(TEST_NAME)

re:	fclean  all
