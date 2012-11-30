until_it_works
==============

Common Ruby Retry Patterns

```
until_it_works do
  CriticalButNotTimeSensitiveNetwork.call
end

until_it_works do
  DbLintReport.generate
end
```

There's code sprinkled through just about every cron job I write in Rails. Now, I understand it's verboten to catch all exceptions, or even just the ones caught by the default rescue. But sometimes it's not entirely clear you've done all you should when, for instance, using a library that has a thread safety issue that either does nothing or crashes hard (Here's looking at you, Typheous). 

So, here are some helpers. In addition, you can send in a DANGER ZONE flag, to say catch all exceptions (including control-c):

```
until_it_works(true) do
  setup_buggy_security_system
end
```
