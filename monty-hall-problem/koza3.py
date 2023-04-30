#!/usr/bin/python
# coding=utf-8
""" Парадокс Монти Холла """
import random
iteration_count = 10000
result = 0

for j in range(iteration_count):
    doors = [0,0,0] # Заполняем двери козами
    doors[random.randint(0, 2)] = 1 # Определяем местоположение авто
    player_choice = random.randint(0, 2) # Игрок выбирает дверь
    result += doors[player_choice] # Если игрок не меняет выбор то он выигрывает только если сразу попал в машину

print "Без изменения выбора: ", result
print "С изменением: ", iteration_count - result
