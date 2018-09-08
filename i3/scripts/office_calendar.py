from O365 import *
#from O365.connection import Connection
#from O365.schedule import Schedule
#from O365.cal import Calendar

Connection.oauth2("876123c3-48b9-4ac4-b1e9-287f01438b66", "ghsNJHUQ2^)-rnpxZU4810~", store_token=True)
Connection.proxy(url='10.144.1.10', port=8080)

schedule = Schedule()


try:
    result = schedule.getCalendars()
except:
      print('Cant reach')

notification = []

for cal in schedule.calendars:
     try:
          result = cal.getEvents()
     except:
             print('Cant read events')
     for event in cal.events:
         notification.append(event.fullcalendarioJson())

print(notification)
