'''
模拟30个请求
发给:http://127.0.0.1:8000/test/
    http://127.0.0.1:8000/test/
'''

import random
from threading import  Thread
# 向网站发请求的模块
import requests

# 线程的事件函数 向 8000 / 8001 发请求
def get_request():
    url='http://127.0.0.1:8000/test'
    url2='http://127.0.0.1:80001/test/'
    get_url=random.choice([url,url2])
    requests.get(get_url)
t_list=[]
for i in  range(30):
    t=Thread(target=get_request)
    t_list.append(t)
    t.start()
for t in t_list:
    t.join()
