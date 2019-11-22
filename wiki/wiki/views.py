from django.http import JsonResponse

from user.models import UserProfile
import redis


def test(request):
    r = redis.Redis()
    while True:
        try:
            with r.lock('guoxiaonao', blocking_timeout=3) as lock:

                u = UserProfile.objects.get(username='guoxiaonao')
                u.score += 1
                u.save()
            break
        except Exception as e:
            print('lock failed')
    return JsonResponse({'code': 200, 'data': {}})
def users_weibo_url(requesr):
    oauth=OAuthWeibo('123')
    # oauth_weibo

