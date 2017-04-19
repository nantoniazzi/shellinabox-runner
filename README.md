All the apache related is not necessary :/
I tried to find a workaround around the platform lack of support with HTTP/1.1 and long polling... Without any success

The markdown syntax could be more standard like:

[RUN-BEGIN]: # (cmd:run.sh, stubs:[src/index.htm:html, src/style.css])

###### Execute this program

```javascript,/project/target/src/hello.js
function hello() {
  console.log("hello world!");
}
```

[RUN-END]: #

Or for content where everything is hidden:

[RUN]: # (cmd:run.sh, stub:src/hello.js, title:Execute this program)

_you will actually need to go to the source code to actually see this_

test
