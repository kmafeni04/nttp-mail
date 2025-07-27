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

### mail

```lua
local mail = @record{}
```

### mail.AuthType

```lua
local mail.AuthType = @enum{
  null = -1,
  plain,
  login
}
```

### mail.Conf

```lua
local mail.Conf = @record{
  domain: string,
  host: string,
  port: uinteger,
  auth_type: mail.AuthType,
  starttls: boolean,
  username: string,
  password: string
}
```

### mail.Mailer

```lua
local mail.Mailer = @record{
  sock: integer,
  conf: mail.Conf
}
```

### mail.new

```lua
function mail.new(conf: mail.Conf): (mail.Mailer, string)
```

### mail.SendOpts

```lua
local mail.SendOpts = @record{
  from: string,
  to: sequence(string),
  cc: sequence(string),
  bcc: sequence(string),
  content_type: string,
  headers: sequence(string),
  subject: string,
  body: string,
}
```

### mail.Mailer:send

```lua
function mail.Mailer:send(opts: mail.SendOpts): string
```

