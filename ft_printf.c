/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ckunimur <ckunimur@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/01 17:26:54 by ckunimur          #+#    #+#             */
/*   Updated: 2022/11/09 22:22:34 by ckunimur         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_printf(const char *param, ...)
{
	int count;

	count = 0;
	va_list	list;
	va_start(list, param);
	while (*param)
	{
		if (*param == '%')
		{
			param++;
			count += ft_checkflag(*param, list);
		}
		else
			count += write(1, param, 1);
		param++;
	}
	va_end(list);
	return (count);
}
