##
## EPITECH PROJECT, 2024
## Makefile
## File description:
## Makefile
##

CFLAGS  =   -W -Wall -Wextra -Werror

SRC :=  $(shell find -name "*.c")

OBJ =   $(SRC:.c=.o)

NAME    =  execute

all:	$(NAME)

$(NAME):	$(OBJ)
	$(CC) $(OBJ) -o $(NAME)

debug:
	$(CC) $(OBJ) -o $(NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re:	fclean  all
