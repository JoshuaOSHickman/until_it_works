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

##Is It Any Good?

[Yes.](https://news.ycombinator.com/item?id=3067434)

##Who uses it?

My current employer, SocialVibe, who graciously acknowledged I had already open sourced this. It's _in production_, as the youngsters say. Not sure why people would have large bodies of code that never go into production, but this did anyway. 

Copyright, oh, man, probably me? Socialvibe? I'll have to grab timestamps from the initial commits. 
