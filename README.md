# s_world

A tiny resource controlling global world behaviour: wanted levels, NPC police engagement,
and ambient dispatch.

## Function

s_world exists purely to turn off or tune down GTA's native systems that conflict with a
serious roleplay server. It is one of the smallest resources in Saga by design: a handful
of config flags and a single thread that idles almost entirely.

## Key Features

- Disable native wanted levels entirely, letting law enforcement roleplay be handled by
  the Police whitelist system instead of game mechanics
- Disable NPC police engagement so ambient peds never initiate combat with players
- Disable ambient dispatch (random police/ambulance/fire response to in-world events)
- Optional full removal of ambient cop peds from the world, defaulting to off with a
  comment explaining the trade-off
- Single thread backing off to a 2 second idle tick; this resource costs effectively
  nothing at runtime

## Security Updates

None applicable. This resource only suppresses native game behaviour and has no player
input surface, network events, or persistence layer.

## Dependencies

None. s_world is fully standalone and has no dependency on any other Saga resource.
