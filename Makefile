# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nahmed-m <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/05/25 16:57:41 by nahmed-m          #+#    #+#              #
#    Updated: 2019/05/25 17:10:43 by nahmed-m         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC_NAME = main.cpp daemon.cpp
CC = g++
OBJ_NAME = $(SRC_NAME:.cpp=.o)

NAME = Matt_daemon

$(NAME) :
	$(CC) -Werror -Wextra -Wall $(SRC_NAME) -c
	$(CC) -o $(NAME) $(OBJ_NAME)

all : $(NAME)

clean :
	rm -rf $(OBJ_NAME)

fclean : clean
	rm -rf $(NAME)

re : fclean all

.PHONY : re fclean clean all
