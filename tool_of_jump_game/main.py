# 微信跳一跳小程序辅助工具
# 待办列表：
#   - 改进系数计算的部分，不涉及屏幕分辨率
from pynput import mouse
import random
import pyautogui
import time

click_num = 0
pos_1 = [0, 0]
pos_2 = [0, 0]
version = '0.0.1'
click_status = False

# 关闭 PyAutoGUI 自带的延迟
pyautogui.PAUSE = 0

# 打印介绍
print(f'微信跳一跳小程序辅助工具 v{version}')

# 获取系数（待改进）
default_coefficient = 7.25
coefficient = input(f'输入系数（默认系数为 {default_coefficient} ）> ')
coefficient = default_coefficient if coefficient.strip() == '' else float(coefficient)

# 神秘小提示
print('提示：请确认微信小程序的窗口和运行该脚本的终端窗口处在同一工作空间，但这并不是必须的，这只是方便您查看信息')
print('接下来，用鼠标右键分别点击跳一跳起始点和终点，您的鼠标指针将移动到这之间的随机位置并自动长按，待长按结束后重复这一步骤')
print('按 Ctrl+C 以退出该脚本')

# 开始
def on_click(x, y, button, pressed):
    global click_status
    if button == mouse.Button.right:
        if pressed:
            click_status = True
        else:
            click_status = False

# 对鼠标事件的监听
listener = mouse.Listener(on_click=on_click)
listener.start()

while True:
    if click_status:
        mouse_pos = pyautogui.position()
        if click_num == 0:
            pos_1[0] = mouse_pos[0]
            pos_1[1] = mouse_pos[1]
            click_num = 1
        else:
            pos_2[0] = mouse_pos[0]
            pos_2[1] = mouse_pos[1]
            click_num = 0

            print(f'起始点: {pos_1}, 终点: {pos_2}')

            # 由于随机数生成数据只能由小到大，此处进行排序
            posx = sorted([pos_1[0], pos_2[0]])
            posy = sorted([pos_1[1], pos_2[1]])

            # 长按时的光标位置
            click_pos = [random.randint(posx[0], posx[1]), random.randint(posy[0], posy[1])]

            # 长按时间（待改进）
            click_time = coefficient * (abs(pos_2[0] - pos_1[0])) / pyautogui.size()[0]
            print(f'随机到的长按位置: {click_pos}, 长按时间: {click_time}')

            # 移动到长按位置
            pyautogui.moveTo(click_pos[0], click_pos[1], duration=0)

            # 长按过程
            pyautogui.mouseDown(button='left')
            time.sleep(click_time)
            pyautogui.mouseUp(button='left')

            print('该步骤完成，继续下一步骤')
        click_status = False
