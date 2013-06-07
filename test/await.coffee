# fs = require("promised-io/fs")
# p = require("promised-io/promise")

# a = true
# b = false

# p.delay(500)
#     .then (res) ->
#         console.log "hello"
#         throw "foo"
#         a
#     .then (res) ->
#         console.log res
#     , (err) ->
#         console.log err


# # a = async (fname) ->
# #     contents = await fs.readFile(fname)
# #     console.log contents.toString()
# #     await p.delay(500)
# #     contents = await fs.readFile(fname)
# #     console.log contents.toString()

# delay_return = async (time, val) ->
#     await p.delay(time)
#     val

# f = async (fname) ->
#     if await promise_a or await promise_b
#         await promise_c
#     val_a = await func_a await promise_d
    
# f = async (fname) ->
#     contents = await fs.readFile await delay_return(500, fname)
#     console.log contents.toString()

# b = () ->
#     if k = true
#         return 1
# console.log b()


# false or promise => promise
# true or promise => true

# Promise.as(bool or promise)

# false and promise =>



f = async (fname) ->
    p = {}
    unless not await promise_a or await promise_b
        await promise_b
    else
        10
    12
    p.q = await promise_c await promise_d

    # while await promise_a
    #     console.log "foo"

    # if await promise_a
    #     a = 1
    #     await promise_b
    #     b = 2
    # else
    #     c = 3
    #     await promise_c
    #     d = 4
    # b = 2

    # (await promise_a or await promise_b) and await promise_c
    # (not await promise_a) && (await promise_b && await promise_c)
    # await promise_a and await promise_b and await promise_c
    # (await promise_a and await promise_b) or await promise_c
    if await promise_0
        await promise_a
        await promise_b
    else if true
        await promise_c
        await promise_d
    else
        await promise_e
        await promise_f
    true

    # await promise_a * (await promise_b + bool)

    # bool or await promise
    # funcy a = await promise, b = await promise
    # funcy await promise, await promise
    # await promise_a await promise_b, await promise_c
    # funcy bool or await promise_b or bool and await promise_c await promise_a
    # bool or await promise_b
    # await promise_a or bool
    # await promise_a or await promise_b

    # # temp = await delay_return(500, fname)
    # # contents = await fs.readFile temp
    # await promise_z
    # console.log "foo"
    # # res_a = await promise_a await promise_b
    # res_b = await promise_c await promise_e
    # if await promise_d
    #     console.log "bar"
    # else
    #     console.log "baz"
    # # console.log res_a

    # await promise_a or await promise_b

    # await promise_a or bool

    # (bool or promise_b)

    # await promise_c and await promise_d

# g = (foo) ->
#     promise_a
#         .then (_temp_) ->
#             return _temp_ or promise_b
#             if _temp_
#                 return true
#             else
#                 return promise_b
#         .then (_temp_) ->
#             _temp_
#             return promise_c
#         .then (_temp_) ->
#             if _temp_
#                 return promise_d
#             else
#                 return false
#         .then (_temp_) ->
#             _temp_

    # if await promise_d or await promise_e
    #     console.log res_b

# a("test/await.coffee")
