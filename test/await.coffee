fs = require("promised-io/fs")
Promise = require("promised-io/promise")
defer = Promise.defer

# This function is included in the latest version version promised-io on github
Promise.as = (val) ->
    p = defer()
    p.resolve(val)
    p

delayValue = async (val) ->
    await Promise.delay 100
    val

# Async blocks undergo a transformation to promises with the same syntax and
# semantics as in C# (http://msdn.microsoft.com/en-us/library/vstudio/hh156513.aspx)
a = async (fname) ->

    # Simple await
    t0 = +new Date
    await Promise.delay 50
    console.log "delayed for ", (+new Date - t0), "ms"

    # Simple assignment
    val = await Promise.as "we just awaited our second promise"
    console.log val

    # Conditional await
    if await Math.random() < 0.5
        console.log "less than half"
    else
        console.log "GREATER than half"

    # Logical composition
    if await Promise.as(true) or await Promise.as(false) and await Promise.as(true)
        console.log "cool conditions"

    # ...with parens
    unless (await Promise.as(true) and await Promise.as(false)) or await Promise.as(false)
        console.log "'unless' works too"

    # complex awaits in conditionals
    if false
        console.log "we shouldn't really get here"
        a = 12
        await Promise.delay a
        console.log 
    else if await Promise.as false  # This part is pretty gnarly
        console.log "not here either"
    else
        console.log "we should definitely get here"
        await Promise.delay 100
        console.log "and wait a bit FIRST"
        await Promise.delay 100
        console.log "and maybe some MORE"
    console.log "AND THEN get here. Cool eh?"

    # Nested calls
    console.log await delayValue await delayValue "doubly nested, just for kicks"

    # A real example
    contents = await fs.readFile fname  # TODO(Ambrus): why doesn't (await ...).toString() work?
    lineCount = contents.toString().match(/\n/g).length + 1
    console.log "this text file has #{lineCount} lines"

    # TODO: Why can't I define an async function in this body?
    # TODO: Multiple, simultaneous awaits (e.g func(await param1, await param2))
    # TODO: Try-Catch
    # TODO: While and For loops

a "test/await.coffee"
