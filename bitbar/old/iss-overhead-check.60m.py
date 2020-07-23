#!/usr/bin/env PYTHONIOENCODING=UTF-8 /Users/amanchokshi/.pyenv/shims/python

# <bitbar.title>ISS Overhead Check</bitbar.title>
# <bitbar.version>v0.0.1</bitbar.version>
# <bitbar.author>Thiago Paes</bitbar.author>
# <bitbar.author.github>mrprompt</bitbar.author.github>
# <bitbar.desc>Check International Space Station Pass Times Over !</bitbar.desc>
# <bitbar.dependencies>python</bitbar.dependencies>

from time import localtime

from requests import get

LATITUDE = -37.840935  # Put your latitude here
LONGITUDE = 144.946457  # Put your longitude here
ALTITUDE = 40  # Put your altitude here


def iss_overhead():
    url = "http://api.open-notify.org/iss-pass.json?lat={}&lon={}&alt={}".format(
        LATITUDE, LONGITUDE, ALTITUDE
    )
    response = get(url)
    content = response.json()
    print(content)

    print("☄")
    separator()

    if content["message"] == "success":
        for overhead in content["response"]:
            ts = overhead["risetime"]
            (
                year,
                month,
                day,
                hour,
                minute,
                seconds,
                weekday,
                year_day,
                is_dst,
            ) = localtime(ts)
            print(f"{year}-{month}-{day}-{hour}:{minute}")

            print("☄ {}/{} - {}:{} UTC".format(day, month, hour, minute))
    else:
        print("☠ Invalid response.")


def separator():
    print("---")


# Execution
try:
    iss_overhead()
except Exception as e:
    print("☠ Script error:")
    print(e)
    separator()
