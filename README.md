# nttp-mail

An SMTP library for [nttp](https://github.com/kmafeni04/nttp)

## Requirements
- [nelua](https://nelua.io/)
- [nttp](https://github.com/kmafeni04/nttp)
- openssl

## How to install
Add to your [nlpm](https://github.com/kmafeni04/nlpm) package dependencies
```lua
{
  name = "nttp-mail",
  repo = "https://github.com/kmafeni04/nttp-mail",
  version = "COMMIT-HASH-OR-TAG",
},
```

## Quick start

```lua
local mail = require ".mail"

local username = "username@email.com"

local mailer, err = mail.new({
  host = "smtp.gmail.com",
  port = 587,
  starttls = true,
  username = username,
  password = "PASSWORD",
})
assert(err == "", err)

local err = mailer:send({
  from = username,
  to = {"test@email.com"},
  cc = {"test2@email.com"},
  subject = "Test",
  body = "hello",
})
assert(err == "", err)
```

## Reference

