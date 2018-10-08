# the filter method receives an event and must return a list of events.
# Dropping an event means not including it in the return array,
# while creating new ones only requires you to add a new instance of
# LogStash::Event to the returned array
def filter(event)
    cookie_string = event.get("[httpRequest][header][cookie]")
    cookies = cookie_string.split("; ")
  
    for cookie in cookies
      parts = cookie.split("=")
      event.set("[httpRequest][cookie][#{parts[0]}]", parts[1])
    end
  
    return [event]
  end