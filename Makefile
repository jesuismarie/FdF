NAME = fdf

SRCS = ./src/fdf.c ./src/draw.c ./src/fdf_error.c ./src/fdf_functions.c ./src/fdf_parse.c \
		./src/fdf_utils.c ./src/ft_printf_lib.c ./src/ft_printf.c ./src/fdf_control.c

OBJS = ${SRCS:.c=.o}

INCS = -I

CFLAGS = -Wall -Wextra -Werror

HEADER = ./includes/fdf.h

MINILIBX = ../minilibx_macos

LIB = -L minilibx_macos -lmlx

FMS = -framework OpenGL -framework AppKit

%.o: %.c $(HEADER) Makefile
	$(CC) $(CFLAGS) $(INCS)minilibx_macos -c $< -o $@

all:	${NAME}

${NAME}: ${OBJS}
	$(CC) $(CFLAGS) $(OBJS) $(LIB) $(FMS) -o ${NAME}

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f ${NAME}

re: 	fclean all

.PHONY: all clean fclean
