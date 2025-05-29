# Nova
Nova is a programming language made by [wryl](https://wryl.tech/).

This wiki describes [my dialect of Nova](https://git.casuallyblue.dev/vega/ynova),
but all of the knowledge on this page (apart from built-in rules) are transferrable to
other dialects of Nova.

## Stacks
Nova is a stack-based language, and everything happens on stacks. (It is not anything
like a stack language you may know of, like Forth or Callisto). Nova has multiple stacks
which all have names. Let's look at this program:

<```||
	:foo: bar baz
```>

For this section, I will just focus on the second line. This is a statement that pushes
something to a stack. The stack name is inside of the `::` pair. The `bar baz` is
a tuple of symbols (where a symbol is a word, like "baz", and the tuple is an array).

Pushing something to a stack is the only "statement" in Nova.

## Rules
Rules are run by the interpreter when their conditions are met. Their conditions are
the same push statements as before, except they describe what should be on top of the
stacks. These conditions go between the `||` pair. See this example:

<```|:foo: bar :baz: quux|
	:: hello
```>

If `bar` is on top of the stack `foo`, and `quux` is on top of the stack `baz`, then
the rule body will be executed. `hello` will be pushed to the empty-named stack.

In Nova, the empty-named stack is used for many operations, it's a sort of "default
stack".

An important thing to mention is that `||` is a special rule with no conditions. It is
run once, when the program starts, and then never again. Another important thing to
mention is that tuples in the rule body are pushed in reverse. In this program, the
top of the empty named stack will be `foo`:

<```||
	:: foo
	:: bar
	:: baz
```>

### Question mark
Here's a situation that happens somewhat commonly in Nova:
<```|:: foobar|
	...
	:: foobar
```>

To automatically push that `foobar` at the end, you can add a `?` to the condition, like
this:

<```|:: foobar?|
	...
```>


### Substitution
Something very useful in Nova is being able to match a tuple with any value in one
or more of the symbols. This is possible using `$`, like this:

<```|:: foo $x baz|
```>

This will match any tuple of 3 symbols, with the first symbol being `foo` and the
last symbol being `baz`. 

You can also use this substitution as a local constant variable. This rule will
print 2 symbols pushed to the `print-me` stack:

<```|:print-me: $a $b|
	:: print $a $b
```>

## Tips and tricks
You may now understand how Nova works, but you may not understand how to program with it.

### Storing a state
You can store a state by storing 1 tuple on a specific stack. For this section, I will
create an example program that increments a counter. In the "main rule", you can initialise
a state like this:

<```||
	:counter: 0
```>

Now to increment this counter. You can use the main stack to push a "command" that
another rule will use to update the counter. It's important to use the main stack a lot
to make sure operations will happen in the order you write them. If you use many stacks
for many "commands", then the commands will be executed in the order that the rules for
them are defined. This is because if you have many commands on one stack, then the
interpreter will keep popping commands from that stack, and then it will run a rule
for each one.

The command will look like this:

<```||
	:counter: 0
	:: increment-counter
```>

Now, we will implement that command. These will be the rule conditions:

<```|:: increment-counter :counter: $n|
```>

Putting the counter in the conditions will allow you to easily use the counter value
in the rules you push. In the rule body, the `@math` stack and its operations will
be used to increment the counter value, like this:

<```|:: increment-counter :counter: $n|
	:@math: +
	:@math: 1
	:@math: $n
```>

The result of that is now on the `@math` stack, and we need a way to take that
value and put it in `counter`. As the `counter` stack is now empty, as the rule above
took away the value, we are free to add the new value. At the end of the rule above,
we can add this as another command:

<```:: set-counter
```>

Then, we define a rule to use that command to take the value from the `@math` stack
and put it in `counter`:

<```|:: set-counter :@math: $n|
	:counter: $n
```>

You can also print the counter using the `|:: print $str|` rule to see the value of
the counter during this rule.
