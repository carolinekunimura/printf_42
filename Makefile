# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ckunimur <ckunimur@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/01 18:30:14 by ckunimur          #+#    #+#              #
#    Updated: 2022/11/09 22:40:56 by ckunimur         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =	libftprintf.a

CFLAGS = -Wall\
		-Wextra\
		-Werror\

AR = ar -rc

RM = rm -f

SRC =	ft_printf.c\
		ft_checkflag.c\
		ft_putchar.c\
		ft_puthexa.c\
		ft_putint.c\
		ft_putstr.c\
		ft_putunsigned.c\
		ft_putpointer.c

OBJ = $(SRC:.c=.o)

all:	$(NAME)

$(NAME): $(OBJ)
		$(AR) $(NAME) $(OBJ)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
