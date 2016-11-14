/// key_release(alarm);

if (lkey == event_number) {
 if (argument_count == 1)
  alarm[argument[0]] = -1;
 else
  alarm[0] = -1;
 autostop = false;
}

