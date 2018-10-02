# the filter method receives an event and must return a list of events.
# Dropping an event means not including it in the return array,
# while creating new ones only requires you to add a new instance of
# LogStash::Event to the returned array
def filter(event)
  headers = event.get("[httpRequest][headers]")

  for header in headers
    event.set("[httpRequest][header][#{header["name"]}]", header["value"])
  end

  return [event]
end