# python -m venv .venv
# Windows (may require elevation)
# python -m pip install matplotlib

import grequests
import time


def err_handler(request, exception):
    print("请求出错")


url = 'http://150.158.198.187/test/dev.php?'


def req(i):
    return grequests.post(url+str(i), json={})


reqs = []
for i in range(10000):
    reqs.append(req(i))

res_list = []
# for i in range(30):
#     time.sleep(1)
res_list.append(grequests.map(reqs, exception_handler=err_handler))

print(res_list)
print(len(res_list))
