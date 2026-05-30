#!/usr/bin/env python3
import sys
import json
import subprocess

def run_cmd(cmd):
    return subprocess.check_output(cmd, shell=True).decode('utf-8')

def move_canvas(dx, dy):
    # Получаем список всех открытых окон
    clients = json.loads(run_cmd("hyprctl clients -j"))
    
    for client in clients:
        # Пропускаем скрытые или специальные окна
        if client["workspace"]["id"] < 0:
            continue
            
        address = client["address"]
        # Считаем новые координаты с учетом сдвига мыши/клавиш
        new_x = client["at"][0] + dx
        new_y = client["at"][1] + dy
        
        # Передвигаем окно в новые абсолютные координаты
        run_cmd(f"hyprctl dispatch movewindowpixel exact {new_x} {new_y},address:{address}")

if __name__ == "__main__":
    if len(sys.argv) == 3:
        move_canvas(int(sys.argv[1]), int(sys.argv[2]))
