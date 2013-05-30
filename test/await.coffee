fs = require("promised-io/fs")
p = require("promised-io/promise")

a = async (fname) ->
    contents = await fs.readFile(fname)
    console.log contents.toString()
    await p.delay(500)
    contents = await fs.readFile(fname)
    console.log contents.toString()

# delay_return = async (time, val) ->
#     await p.delay(time)
#     val

# a = async (fname) ->
#     # fname = await delay_return(500, fname)
#     contents = await fs.readFile await delay_return(500, fname) await p
#     console.log contents.toString()

a("test/await.coffee")
