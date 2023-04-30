#!/usr/bin/python
# coding=utf-8
""" Парадокс Монти Холла """
import random
iteration_count = 10000
change_result = 0
nochange_result = 0
# Цикл в два прохода, с изменением выбора и без
for change_choice in [0, 1]:
# Набираем статистику
    for j in range(iteration_count):
	car_place = random.randint(0, 2)
	player_choice = random.randint(0, 2)
	if change_choice:
	    if player_choice != car_place:
		change_result += 1
	else:	
	    if player_choice == car_place:    
		nochange_result += 1
		
		
print "Без изменения выбора: ", nochange_result
print "С изменением: ", change_result
