import jwt
from django.http import JsonResponse
from user.models import UserProfile


TOKEN_KEY = '1234567ab'

def logging_check(*methods):
    def _logging_check(func):
        def wrapper(request, *args, **kwargs):
            #逻辑判断
            #1,判断当前请求是否需要校验
            #2,取出token
            #3,如果需要校验token, 如何校验
            if not methods:
                return func(request, *args, **kwargs)
            else:
                if request.method not in methods:
                    return func(request, *args, **kwargs)
            #取出token
            token = request.META.get('HTTP_AUTHORIZATION')
            if not token:
                result = {'code': 20104, 'error': 'Please login'}
                return JsonResponse(result)

            try:
                res = jwt.decode(token, TOKEN_KEY, algorithms='HS256')
            except Exception as e:
                result = {'code': 20105, 'error': 'Please login'}
                return JsonResponse(result)

            username = res['username']

            user = UserProfile.objects.get(username=username)

            request.user = user

            return func(request, *args, **kwargs)
        return wrapper
    return _logging_check


def get_user_by_request(request):
    #尝试获取用户身份
    #return user or None
    token = request.META.get('HTTP_AUTHORIZATION')
    if not token:
        #用户没登录
        return None
    try:
        res = jwt.decode(token, TOKEN_KEY, algorithms='HS256')
    except Exception as e:
        return None

    username = res['username']
    users = UserProfile.objects.filter(username=username)
    if not users:
        return None
    return users[0]






















