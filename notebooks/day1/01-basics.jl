### A Pluto.jl notebook ###
# v0.12.17

using Markdown
using InteractiveUtils

# ╔═╡ bf1385da-4ac2-11eb-3992-41abac921370
using Plots

# ╔═╡ e97e5984-4ab9-11eb-3efb-9f54c6c307dd
# edit the code below to set your name and UGent username

student = (name = "Hanne Janssen", email = "Jeanette.Janssen@UGent.be");

# press the ▶ button in the bottom right of this cell to run your edits
# or use Shift+Enter

# you might need to wait until all other cells in this notebook have completed running. 
# scroll down the page to see what's up

# ╔═╡ f089cbaa-4ab9-11eb-09d1-05f49911487f
begin 
	using DSJulia;
	tracker = ProgressTracker(student.name, student.email);
	md"""

	Submission by: **_$(student.name)_**
	"""
end

# ╔═╡ fd21a9fa-4ab9-11eb-05e9-0d0963826b9f
md"""
# Notebook 1: Getting up and running

First of all, **_welcome to the course!_**
"""

# ╔═╡ 0f47f5b2-4aba-11eb-2e5a-b10407e3f928


# ╔═╡ 23d3c9cc-4abd-11eb-0cb0-21673effee6c
md"""## 1. The basics
*From zero to newbie.*
"""

# ╔═╡ 62c3b076-4ab7-11eb-0cf2-25cdf7d2540d
md"""
Let's get started with the basics. Some mathematical operations, """

# ╔═╡ 7bf5bdbe-4ab7-11eb-0d4b-c116e02cb9d9
1 + 2       # adding integers

# ╔═╡ 83306610-4ab7-11eb-3eb5-55a465e0abb9
1.0 + 2.0   # adding floats

# ╔═╡ 83311b8a-4ab7-11eb-0067-e57ceabdfe9d
2 / 4       # standard division

# ╔═╡ 833dbc66-4ab7-11eb-216d-f9900f95deb8
div(2, 4)   # Computes 2/4 truncated to an integer

# ╔═╡ 8342c042-4ab7-11eb-2136-497fc9e1b9c4
2 ÷ 4

# ╔═╡ 834d4cbc-4ab7-11eb-1f1a-df05b0c00d66
7 % 3       # get the remainder of the integer division

# ╔═╡ 8360ffac-4ab7-11eb-1162-f7a536eb0765
35 \ 7      # inverse division

# ╔═╡ 8365cb3e-4ab7-11eb-05c0-85f51cc9b018
1 // 3      # fractions

# ╔═╡ 8370eaf0-4ab7-11eb-1cd3-dfeec9341c4b
1//2 + 1//4

# ╔═╡ 8383f104-4ab7-11eb-38a5-33e59b1591f6
'c'        # characters (unicode)

# ╔═╡ 8387934a-4ab7-11eb-11b2-471b08d87b31
:symbol    # symbols, mostly used for macros

# ╔═╡ 8c14cb9a-4ab7-11eb-0666-b1d4aca00f97
md"variable assignment"

# ╔═╡ 93b5a126-4ab7-11eb-2f67-290ed869d44a
x = 2

# ╔═╡ 962ae6d2-4ab7-11eb-14a2-c76a2221f544
τ = 1 / 37  # unicode variable names are allowed

# ╔═╡ 98d48302-4ab7-11eb-2397-710d0ae425f7
md"""

unicode! In most Julia editing environments, unicode math symbols can be typed when starting with a '\' and hitting '[TAB]'.

"""

# ╔═╡ cee8a766-4ab7-11eb-2bc7-898df2c9b1ff
# type \alpha  and <TAB>

# ╔═╡ e2c5b558-4ab7-11eb-09be-b354fc56cc6e
md"Operators are overrated."

# ╔═╡ ec754104-4ab7-11eb-2a44-557e4304dd43
5x         # This works

# ╔═╡ f23a2d2a-4ab7-11eb-1e26-bb2d1d19829f
md"But strings are quite essential,"

# ╔═╡ fa836e88-4ab7-11eb-0ba6-5fc7372f32ab
mystery = "life, the universe and everything"

# ╔═╡ 0138ef46-4ab8-11eb-1813-55594927d661
md"and string interpolation is performed with `$`."

# ╔═╡ 0b73d66a-4ab8-11eb-06e9-bbe95285a69f
"The answer to $mystery is $(3*2*7)"

# ╔═╡ 6b6eb954-4ab8-11eb-17f9-ef3445d359a3
md"""
Printing can be done with `println()` but in this notebook environment this does not seem to do much.
"""

# ╔═╡ 94e3eb74-4ab8-11eb-1b27-573dd2f02b1d
println("The answer to $mystery is $(3*2*7)")

# ╔═╡ 7592f8a2-4ac0-11eb-375c-61c915380eeb
md"... but take a look at the terminal window."

# ╔═╡ abf00a78-4ab8-11eb-1063-1bf4905ca250
md"""
repetitions of strings can be done using the operators `*` and `^`.
This use of `*` and `^` makes sense by analogy with multiplication and exponentiation. Just as `4^3` is equivalent to `4*4*4`, we expect `"Spam"^3` to be the same as `"Spam"*"Spam"*"Spam"`, and it is.
"""

# ╔═╡ be220a48-4ab8-11eb-1cd4-db99cd9db066
breakfast = "eggs"

# ╔═╡ cadaf948-4ab8-11eb-3110-259768055e85
abetterbreakfast = "SPAM"

# ╔═╡ cadb506e-4ab8-11eb-23ed-2d5f88fd30b0
breakfast * abetterbreakfast

# ╔═╡ caf56346-4ab8-11eb-38f5-41336c5b45a7
breakfast * abetterbreakfast^3 * breakfast

# ╔═╡ 046133a8-4ab9-11eb-0591-9de27d85bbca
md"""
Lots of handy ´String`-operations are available in the standard library of Julia:
"""

# ╔═╡ 0c8bc7f0-4ab9-11eb-1c73-b7ec002c4155
uppercase("This feels like shouting.")

# ╔═╡ 0f8a311e-4ab9-11eb-1b64-cd62b65c49bf
findfirst("a", "banana")

# ╔═╡ 0f8a5e94-4ab9-11eb-170b-cfec74d6ebbc
findfirst("na", "banana")

# ╔═╡ 0f96fdd6-4ab9-11eb-0e33-2719394a66ba
findnext("na", "banana", 4)

# ╔═╡ 1f255304-4ab9-11eb-34f1-270fd5a95256
md"Unlike `Strings`, a `Char` value represents a single character and is surrounded by single quotes."

# ╔═╡ 34a18900-4ab9-11eb-17a0-1168dd9d06f9
'x'

# ╔═╡ 39a0a328-4ab9-11eb-0f37-6717095b56aa
md"
The operator `∈` (\in TAB) is a boolean operator that takes a character and a string and returns true if the first appears in the second:"

# ╔═╡ 4749f268-4ab9-11eb-15a7-579437e0bd20
'a' ∈ "banana"

# ╔═╡ 5a9bbbe6-4aba-11eb-3652-43eb7891f437


# ╔═╡ 6bdc8a5e-4aba-11eb-263c-df3af7afa517
QuestionBlock(;
	title=md"**Question 1: logical statements**",
	description = md"""
	
	Check the behaviour of the relational operators on strings.
	
	```julia
	"apples" == "pears"
	"apples" < "pears"
	"apples" < "Pears"
	```
	"""
)

# ╔═╡ a69ead46-4abc-11eb-3d1d-eb1c73f65150
md"All binary arithmetic and bitwise operators have an updating version that assigns the result of the operation back into the left operand. The updating version of the binary operator is formed by placing a, `=`, immediately after the operator."

# ╔═╡ b482b998-4abc-11eb-36da-379010485bfa
let         # the `let`-environment creates a local workspace, x will only exist here.
	x = 1   # inplace update of x
	x += 2  # inplace update of x
	x += 2
end

# ╔═╡ 07b103ae-4abd-11eb-311b-278d1e033642
md"Similarly to Matlab, when using the REPL, Julia will print the result of every statement by default. To suppress this behavious, just end the statement with a semicolon."


# ╔═╡ 15f8b7fe-4abd-11eb-2777-8fc8bf9d342e
a = 10;  # not printed

# ╔═╡ 18f99e46-4abd-11eb-20a8-859cb1b12fe3
b = 20

# ╔═╡ 3a7954da-4abd-11eb-3c5b-858054b4d06b
md"""## 2. Logical statements

*From zero to one.*
"""


# ╔═╡ 8b17d538-4abd-11eb-0543-ab95c9548d6f
md"**Boolean operators**"

# ╔═╡ 91a9d1a0-4abd-11eb-3337-71983f32b6ae
!true

# ╔═╡ 942d4202-4abd-11eb-1f01-dfe3df40a5b7
!false

# ╔═╡ 942dae0e-4abd-11eb-20a2-37d9c9882ba8
1 == 1

# ╔═╡ 943d9850-4abd-11eb-1cbc-a1bef988c910
2 == 1

# ╔═╡ 943de2ce-4abd-11eb-2410-31382ae9c74f
1 != 1

# ╔═╡ 9460c03c-4abd-11eb-0d60-4d8aeb5b0c1d
2 != 1

# ╔═╡ 946161f4-4abd-11eb-0ec5-df225dc140d0
1 < 10

# ╔═╡ 947d143a-4abd-11eb-067d-dff955c90407
1 > 10

# ╔═╡ 947fea8e-4abd-11eb-1d6a-2bc540f7a50e
2 <= 2

# ╔═╡ 948eff10-4abd-11eb-36d0-5183e882a9e2
2 >= 2

# ╔═╡ 948f5032-4abd-11eb-3d1c-7da4cb64521c
# Comparisons can be chained
1 < 2 < 3

# ╔═╡ 94b520e6-4abd-11eb-3161-addf3b0e4f24
2 < 3 < 2

# ╔═╡ 94b78322-4abd-11eb-3006-454548efd164
# Logical operators
true && true

# ╔═╡ 94d28c80-4abd-11eb-08c0-717207e4c682
true || false

# ╔═╡ 9fe6e1a2-4abd-11eb-0c39-458ce94265c0
md"Likewise, we have the Boolean logic operators `&&` (AND), `||` (OR) and `⊻` (XOR, exclusive or)."

# ╔═╡ ae26ab9e-4abd-11eb-3270-33558dbdf663
true && true

# ╔═╡ b08dc886-4abd-11eb-1807-096a7e6fd6f9
true && false

# ╔═╡ b08e3a28-4abd-11eb-258a-a5a93b4b882c
true || false

# ╔═╡ b0a8dfe0-4abd-11eb-167d-2fc3974c7c92
false || false

# ╔═╡ b0a97e00-4abd-11eb-371c-e138aea17bb6
true ⊻ false

# ╔═╡ b0ccc252-4abd-11eb-048b-4bec3750bbf1
true ⊻ true

# ╔═╡ 1c5975ec-4abe-11eb-0ff0-bfb2f03a520b
statements = [ missing,   #first statement
				missing,  # second statement
				missing]  # third statement

# ╔═╡ bd446c42-4abd-11eb-0465-d9a61c48ff48
begin

qb1 = QuestionBlock(;
	title=md"**Question 2: advanced logical statements**",
	description = md"""
	
	Predict the outcomes of the following statements.
	
	```julia
	z, y = true, false

	(z || y) && !(y || y) # first

	(z ⊻ y) && (!z ⊻ !y)  # second

	(z || y) ⊻ (z && y)   # third
	```
	""",
	questions = [Question(validators = statements, description = md"Replace `missing` with the correct boolean (true, false) below.")]
)
	validate(qb1, tracker)
end

# ╔═╡ 1c22b880-4abf-11eb-3f18-756c1198ccad
md"## 3. Control flow"

# ╔═╡ 37086212-4abf-11eb-3ec9-7f8dae57121e
md"The `if`, `else`, `elseif`-statement is instrumental to any programming language,"

# ╔═╡ 489421d8-4abf-11eb-0d5e-fd779cc918a1
if 4 > 3
  "A"
elseif 3 > 4
  "B"
else
  "C"
end

# ╔═╡ 6736dafe-4abf-11eb-1fce-0716d2b7f4a8
md"""
Julia allows for some very condense control flow structures.
y = `condition` ? `valueiftrue` : `valueiffalse`
"""

# ╔═╡ 0c693c24-4ac0-11eb-2329-c743dcc5039d
clip(x) = missing

# ╔═╡ 8933033a-4abf-11eb-1156-a53a5ee9152c
begin
   qb2 = QuestionBlock(;
	title=md"**Question 3: clipping exercise**",
	questions = [
		Question(;
			description=md"""
			Complete the clip function: $\max(0, \min(1, x))$ for a given $x$, without making use of the functions `min` and `max`.

			Open assignments always return `missing`. 
			""",
			validators= @safe[clip(-1)==0, clip(0.3)==0.3, clip(1.1)==1.0]
		)
			
		],
	);
	
	validate(qb2, tracker)
end

# ╔═╡ 035a53ba-4ac1-11eb-3c34-b50a803b7b7d
md"Oh yeah! 🎉 You defined your first function in Julia. More on this later."

# ╔═╡ 2a5fca7c-4ac0-11eb-33a3-23d972ca27b8
md"## 4. Looping"

# ╔═╡ 3896642a-4ac0-11eb-2c7c-4f376ab82217
characters = ["Harry", "Ron", "Hermione"]

# ╔═╡ 3ef3faf8-4ac0-11eb-1965-fd23413e29f3
for char in characters
  println("Character $char")
end

# ╔═╡ 4118016e-4ac0-11eb-18bf-5de326782c87
for (i, char) in enumerate(characters)
  println("$i. $char")
end

# ╔═╡ 4119fbca-4ac0-11eb-1ea9-0bdd324214c5
pets = ["Hedwig", "Pig", "Crookhanks"]

# ╔═╡ 4139bf3c-4ac0-11eb-2b63-77a513149351
for (char, pet) in zip(characters, pets)
  println("$char has $pet as a pet")
end

# ╔═╡ a1d4127c-4ac0-11eb-116f-79c6ee58f524
md"Strings can also be looped"

# ╔═╡ a93b28e6-4ac0-11eb-074f-a7b64f43a194
getme = "a shrubbery"

# ╔═╡ ac35b796-4ac0-11eb-3bc5-5ff4350d5452
for letter ∈ getme
  println("$letter")
end

# ╔═╡ b18e55ae-4ac0-11eb-1455-21b83b7c61d5
let 
	n = 1675767616;
	while n > 1
	  println(n)
	  if n % 2 == 0
		n = div(n, 2)
	  else
		n = 3n + 1
	  end
	end
end

# ╔═╡ ec4190a8-4ac0-11eb-0421-398f063775bb
md"(Mathematical note: [they got closer to cracking this one](https://www.quantamagazine.org/mathematician-terence-tao-and-the-collatz-conjecture-20191211/?mc_cid=a3adbffb9f&mc_eid=41ed2fca13).)"

# ╔═╡ fdb67aba-4ac0-11eb-1d4a-c354de54baa9
md"""## 5. Functions
Julia puts the fun in functions. User-defined functions can be declared as follows,


"""

# ╔═╡ 28f47a24-4ac1-11eb-271f-6b4de7311db3
function square(x)
  result = x * x
  return result
end

# ╔═╡ 47338c78-4ac1-11eb-04d6-35c2361eaea6
md"A more condensed version of of `square(x)`."

# ╔═╡ 463689b0-4ac1-11eb-1b0f-b7a239011c5c
s(x) = x * x

# ╔═╡ 52bfff04-4ac1-11eb-1216-25eedd9184c3
md"Passing an array to a function that takes a single element as argument takes a special syntax. By putting a `.` before the brackets, the function is executed on all the elements of the Array. More on this in **Part2: collections**."

# ╔═╡ 61846dae-4ac1-11eb-389a-4fbe3f6145b1
s([1, 2, 3, 4, 5])   # Multiplication is not defined for Arrays

# ╔═╡ 6321ae1a-4ac1-11eb-04cb-33e939694874
s.([1, 2, 3, 4, 5])  # This is an elements-wise execution of s()

# ╔═╡ 7b874424-4ac1-11eb-2d4e-0b4607559b8f
md"""Keyword arguments are defined using a semicolon in the back signature and a default value can be assigned. "Keywords" assigned before the semicolon are default values but their keywords are not ignored."""

# ╔═╡ 86defe2a-4ac1-11eb-3c01-c5e671877212
safelog(x, offset=0.1; base=10) = log(x + offset) / log(base)

# ╔═╡ 886512de-4ac1-11eb-00e1-73292ec23277
safelog(0)

# ╔═╡ 88678820-4ac1-11eb-272e-0df61e418900
safelog(0, 0.01)

# ╔═╡ 888dee1e-4ac1-11eb-264d-cd4a4f30f498
safelog(0, 0.01, base=2)

# ╔═╡ 8acb086c-4ac1-11eb-1715-756fde34b38f
md"""When functions have a variable number of arguments, one can use the *slurping* `...` operator to denote a variable number of arguments. The argument will be treated as a collection. For example"""

# ╔═╡ 944e1aaa-4ac1-11eb-0e23-41b1c5d0e889
function mymean(X...)
  m = zero(first(X))  # ensures to be the same type as x
  # m = 0.0  # alternative that is less tidy
  for x in X
	m += x
  end
  return m / length(X)
end

# ╔═╡ 9d4e11be-4ac1-11eb-1fa0-13f1fe60c3bc
mymean(1, 3, 5)

# ╔═╡ 9d514ef6-4ac1-11eb-25fc-ffaa2dcc9b02
mymean(1, 3, 5, 7)

# ╔═╡ a0781222-4ac1-11eb-3425-d9b9603487f3
md"Similarly, the *splatting* operator can be used to split a collection into its individual elements."

# ╔═╡ a6b95d62-4ac1-11eb-0c93-7fa0f6a120d5
c = [1.0, 3.0, 5.0];

# ╔═╡ ab006064-4ac1-11eb-32be-6557b8d45f32
mymean(c...)

# ╔═╡ b0603566-4ac1-11eb-17bc-3b63cd2aa1e9
md"""When unsure of what a function does, in the REPL the documentation can be viewed by adding a "?" in front of the function. Here, in the Pluto environment, put the cursor in the function of interest and open the documentation tab."""

# ╔═╡ beafce06-4ac1-11eb-2431-1ffeba45716b
sort

# ╔═╡ ec487488-4ac1-11eb-1be3-a93e41f78bf3
md"""
For a lot of standard Julia functions a in-place version is defined. In-place means that the function changes one of the input arguments of the function. As an example, `sort()` sorts and returns the array passed as argument, it does not change the original array. In contrast, `sort!()` is the inplace version of sort and directly sorts the array passed as argument.
"""

# ╔═╡ f88fee6c-4ac1-11eb-1671-43493122f061
my_unsorted_list = [4, 5, 9, 7, 1, 9]

# ╔═╡ fa759f92-4ac1-11eb-0d72-1f9d6d38a831
sort(my_unsorted_list)

# ╔═╡ fa7ba458-4ac1-11eb-2ca1-59ff3c032b26
my_unsorted_list

# ╔═╡ fa9b3266-4ac1-11eb-153a-87c6a1124890
sort!(my_unsorted_list)

# ╔═╡ fa9d43b2-4ac1-11eb-33fc-a37503cedabf
my_unsorted_list

# ╔═╡ fd171e0e-4ac1-11eb-09ea-337d17500149
md"Specific functions can be generated if you have more information on the input type.
This is called multiple dispatch.

The `::` operator attaches type annotations to expressions and variables.

How does the documentation for the function square look like after you executed the cell below?"

# ╔═╡ 10e71260-4ac2-11eb-1069-55613ee7df0a
function square(x::Float64)
  println("using function with floats")
  result = x * x
  return result
end

# ╔═╡ 3e433ab4-4ac1-11eb-2178-53b7220fa9ab
square(2)

# ╔═╡ 46112c44-4ac1-11eb-2ad8-030406c7cf67
square(2.0)

# ╔═╡ 461489fa-4ac1-11eb-0596-1d3bedb61778
square("ni")   # the multiplication of strings is defined as a concatenation

# ╔═╡ 1c0230f8-4ac2-11eb-32aa-e7a4b2ae9cff
square(4)

# ╔═╡ 226417c2-4ac2-11eb-2914-196461e2b40e
square(4.)

# ╔═╡ 3daf4fa6-4ac2-11eb-0541-b98c2e97dfe4
md"More about types in the next section !"

# ╔═╡ 4ca70e9c-4dfb-11eb-0e57-b9362a5157b7
md"## 6. A short introduction to types"

# ╔═╡ 6daa0b36-4dfb-11eb-2b8e-43f1b6564680
md"All Julia objects, both those already defined as well as those you might make yourself, have a type. The type system is the secret sauce, allowing Julia to be fast because code can be specialized for a particular combination of types. It is also supremely useful in conjunction with *multiple dispatch*, in which functions work differently depending on which types you feed into them. In one of the exercises at the end of this notebook you will get a taster of how multiple dispatch can be used. A function behaviour changes depending on the type of the arguments. Day 2 will mainly focus on the type system, so in what follows, a concise introduction is given to types."

# ╔═╡ 083b368e-4dfc-11eb-13a8-0d8d2ca161b6
md"### Checking types"

# ╔═╡ 028376fe-4dfc-11eb-3d29-3d18759799c9
md"The type of objects can be assessed using the function `typeof`. For collections, `eltype` gives the types of individual elements. Try the following examples. Note that types are always capitalized!"

# ╔═╡ 11c1c666-4dfc-11eb-327a-271a7cf37b02
begin
	number = 42
	str = "mice"
	n = 0.9
	A = [1 2; 3 4]
end;

# ╔═╡ 1dc7c9ce-4dfc-11eb-30c6-1b29da17c7a9
typeof(number)

# ╔═╡ 1dc97602-4dfc-11eb-1800-f37b2edb701c
typeof(str)

# ╔═╡ 1df39716-4dfc-11eb-1e5a-b344adaef713
typeof(n)

# ╔═╡ 1dfbf208-4dfc-11eb-278e-a5cb40df21d0
typeof(A)

# ╔═╡ 4fd8a348-4dfc-11eb-26e7-0b733016b07b
md"These are all *concrete types*. Julia types are part of a hierarchical type system, forming a single, fully connected type graph. The concrete types are the leaves of this tree, whereas the inner nodes are *abstract types*. As hinted by the name, these are abstract and cannot be instantiated. They, however, help with conceptually ordering the type system.

We can find the supertype of a concrete or abstract type using the function `supertype`.
"

# ╔═╡ 57fc9a0c-4dfc-11eb-3b9c-73250784230c
supertype(Int8)

# ╔═╡ 68be2310-4dfc-11eb-014c-5366cc45800b
supertype(Float64)

# ╔═╡ 68c0007c-4dfc-11eb-1b20-d1ad5e21fd3c
supertype(AbstractFloat)

# ╔═╡ 68e7573a-4dfc-11eb-1bf2-89e86cb08bba
supertype(Real)

# ╔═╡ 68e99f9a-4dfc-11eb-2154-b743468021c7
supertype(Number)

# ╔═╡ 6912c618-4dfc-11eb-3f5d-a78a74e3b129
supertype(Any)

# ╔═╡ 74f5b850-4dfc-11eb-162d-b97f69c209ed
md"See how all the numbers are hierarchically represented? Note that any type is always a subtype of `Any`. We can check if an object is (sub)type using the function `isa`.
"

# ╔═╡ 71aa7bf4-4dfc-11eb-201f-874fc848818a
a isa Int  # Int is concrete type Int64

# ╔═╡ 7f6facfa-4dfc-11eb-1ee6-95e96448eca0
a isa Integer  # Integer is abstract

# ╔═╡ 7f740822-4dfc-11eb-1701-cd30df64e1c9
a isa Int8

# ╔═╡ 7f9dfd76-4dfc-11eb-374d-1bd1aabd1c9d
a isa Number

# ╔═╡ 85230c14-4dfc-11eb-3c65-a372ea9dc871
md"
Concrete types always have a fixed representation whereas abstract types can be anything. Concrete subtypes of `AbstractFloat` can be 16 bits (`Float16`), 32 bits (`Float32`), 64 bits (`Float64`) or arbitrary large (`BigFloat`).

We can check if one type is a subtype of the second one using the binary operator `<:`."

# ╔═╡ 92f53cb8-4dfc-11eb-10c8-878c33a3c1f3
Float64 <: AbstractFloat

# ╔═╡ 9d6a6718-4dfc-11eb-14f6-6d80c7397634
Float16 <: AbstractFloat

# ╔═╡ 9d708210-4dfc-11eb-3031-657e88a7fb9e
AbstractFloat <: Number

# ╔═╡ 9d9c52aa-4dfc-11eb-19ea-018ddbe7f2fe
Int <: Number

# ╔═╡ 9da18914-4dfc-11eb-1c4c-a1f688abfedc
Int <: AbstractFloat

# ╔═╡ 9dd4cc98-4dfc-11eb-38ef-07672461451c
Integer <: Int

# ╔═╡ d37a5912-4dfc-11eb-339a-c915c4098022
md"### Methods and dispatch"

# ╔═╡ d94aa4be-4dfc-11eb-1f59-c94da06c713e
md"When a function is run for the first time with a particular combination of type inputs, it gets compiled by the LLVM compiler. Such a specific function is referred to as a `method`. Every time a function is run with a new combination of types of arguments, a suitable method is compiled. This is noticeable when measuring the running time. Compare (timing is displayed "


# ╔═╡ eaa12d64-4dfc-11eb-2d9f-751ec57f1167
mynewfun(x) = x^2 + x

# ╔═╡ f91efcf4-4dfc-11eb-239b-f3c71b8f437a
A

# ╔═╡ f925958c-4dfc-11eb-39e3-bf1ce5a80ab7
# first run
@time mynewfun(A)

# ╔═╡ f951de94-4dfc-11eb-035f-5d50625cf4af
# second run
@time mynewfun(A)

# ╔═╡ f95742b2-4dfc-11eb-08d6-adf9ec471791
# now with a float
@time mynewfun(1)

# ╔═╡ f98bdb62-4dfc-11eb-16d8-db21b9dc2439
# new value, same type
@time mynewfun(12)

# ╔═╡ 35907758-4dfd-11eb-126b-edfbad7a8772
md"The known methods can be found using the function `methods`. For example, check how many methods there are associated with the humble multiplication operator `*`."

# ╔═╡ 3b7855fa-4dfd-11eb-3a79-cb98f64e2649
println(methods(*))  # output in terminal

# ╔═╡ 7d00a4be-4dfd-11eb-1355-1b2b5a2cb316
md"The arguments a function can take can be restricted using the `::`-operator. Here, if we limit a function as `f(x::T)`, this means that `x` can be any type `<: T`. Can you explain the reasoning behind the following code? How does it process numbers? What does it do with strings?"

# ╔═╡ 8c324398-4dfd-11eb-0856-47819528e5ea
twice(x::Number) = 2x;

# ╔═╡ 8e31c0c4-4dfd-11eb-3334-313cd26f6910
twice(x::String) = x * x;

# ╔═╡ ec58e588-4dfd-11eb-12bb-e3ec16bc58b6
md"
So why use dispatch?

1. Controls the **scope** of functions. For some types, there is no method, and we want an error if we use the wrong type.
2. Because we wish functions to **behave differently** depending on the types you feed into them.

Note that, generally seen, typing the functions is **not** needed to improve the performance of the functions."

# ╔═╡ cefc4ac2-4e00-11eb-23c0-4fff96552b3c
begin 
	l1 = missing
	l2 = missing
	l3 = missing
	l4 = missing
	l5 = missing
	l6 = missing
	l7 = missing
	l8 = missing
	l9 = missing
	l10 = missing
end

# ╔═╡ 05802832-4dfe-11eb-17b7-6f506bd0f334
begin 
	f(x, y) = "No life forms present";
	f(x::T, y::T) where {T} = x * y;  # short for {T <: Any}
	f(x::Integer, y::Real) = 2x + y;
	f(x::Int, y::Int) = 2x + 2y;
	f(x::Integer, y::Float64) = x + 2y;
	f(x::Float64, y::Real) = x - y;
	f(x::Float64, y::Float64) = 2x - y;
	
	ql1 = Question(;description=md"""
			```julia
			f(1, 2.0) #l1
			```
			""", validators = [l1 == 5.0])

	ql2 = Question(;description=md"""
			```julia
			f(1.0, 2) #l2
			```
			""", validators = [l2 == -1.0])

	ql3 = Question(;description=md"""
			```julia
			f(Int8(1), Int8(2)) #l3
			```
			""", validators = [l3 == 4])

	ql4 = Question(;description=md"""
			```julia
			f(1.0, 2.0) #l4
			```
			""", validators = [l4 == 0.0])

	ql5 = Question(;description=md"""
			```julia	
			f("one", 2) #l5
			```
			""", validators = [l5 == "No life forms present"])

	ql6 = Question(;description=md"""
			```julia
			f("one", "two") #l6
			```
			""", validators = [l6 == "onetwo"])

	ql7 = Question(;description=md"""
			```julia
			f(1, Float32(2.0)) #l7
			```
			""", validators = [l7 == 4.0f0])

	ql8= Question(;description=md"""
			```julia
			f(1, 2) #l8
			```
			""", validators = [l8 == 6])

	ql9= Question(;description=md"""
			```julia
			f([1 1; 1 1], [2.0 2.0; 2.0 2.0]) #l9
			```
			""", validators = [l9 == "No life forms present" ])

	ql10= Question(;description=md"""
			```julia
			f([1 1; 1 1], [2 2; 2 2]) #l10
			```
			""", validators = [l10 == [4 4; 4 4]])

	qlb = QuestionBlock(;
		title=md"**Question 3: multiple dispatch**",
		description = md"""
	 Consider the following methods. Can you predict the outcome of the lines of code below it?

	**Methods**: 

		```julia
	f(x, y) = "No life forms present";
	f(x::T, y::T) where {T} = x * y;  # short for {T <: Any}
	f(x::Integer, y::Real) = 2x + y;
	f(x::Int, y::Int) = 2x + 2y;
	f(x::Integer, y::Float64) = x + 2y;
	f(x::Float64, y::Real) = x - y;
	f(x::Float64, y::Float64) = 2x - y;
	```
	""",
		questions = [ql1, ql2, ql3, ql4, ql5, ql6, ql7, ql8, ql9, ql10]
	)

	validate(qlb)
end

# ╔═╡ 6da71180-4ac2-11eb-1cac-410bd1cce70c
md"""## 7. Macros (metaprogramming)
Macros provide a method to include generated code in the final body of a program. It is a way of generating a new output expression, given an unevaluated input expression. When your Julia program runs, it first parses and evaluates the macro, and the processed code produced by the macro is eventually evaluated like an ordinary expression.

Some nifty basic macros are `@time` and `@show`. `@time` prints the cpu time and memory allocations of an expression.
"""

# ╔═╡ 85b96ff0-4ac2-11eb-077f-cf4aad8a3c24
@time square(10)  #Don't forget that printing happens in the terminal windows

# ╔═╡ a11c2898-4ac2-11eb-24d3-6f8060b5fd65
md"""The `@show` macro is often useful for debugging purposes. It displays both the expression to be evaluated and its result, finally returning the value of the result."""

# ╔═╡ a686e67e-4ac2-11eb-228e-23524a3ddc59
@show 1 + 1

# ╔═╡ ad156892-4ac2-11eb-3634-a3783231e5a1
md"""## 8. Plotting

Quite essential for scientific programming is the visualisation of the results. `Plots` is the Julia package that handles a lot of the visualisation. `rand(10)`, returns an array of 10 random floats between 0 and 1.
"""

# ╔═╡ d779956a-4ac2-11eb-39de-4b3cecace452
md"""When loading in a package for the first time Julia will have to precompile this package, hence this step can take some time."""

# ╔═╡ c7d2a048-4ac2-11eb-3902-b7c8505096ae
begin 
	plot(1:10, rand(10), label="first")
	plot!(1:10, rand(10), label="second") # adding to current figure using plot!

	scatter!([1:10], randn(10), label="scatter")

	xlabel!("x")
	ylabel!("f(x)")
	title!("My pretty Julia plot")
end

# ╔═╡ cf35b2b2-4ac2-11eb-1ae6-5d3c108210df
plot(0:0.1:10, x -> sin(x) / x, xlabel="x", ylabel="sin(x)/x", color=:red, marker=:square, legend=:none) 
# notice the use of a symbol as an argument !

# ╔═╡ d1010f88-4ac2-11eb-0fa9-0902fef0cf9f
contour(-5:0.1:5, -10:0.1:10, (x, y) -> 3x^2-4y^2 + x*y/6)

# ╔═╡ 19e74adc-4ac3-11eb-239f-7b0132287466


# ╔═╡ 0e63d722-4ac3-11eb-3740-d31b47a77912
md"""### 9. Exercises"""

# ╔═╡ 42f24f58-4ac3-11eb-06b5-ebc015c17520
begin 
qb3 = QuestionBlock(;
	title=md"**Question 4: can you justify this?**",
	description = md"""
	
	Write a function named `rightjustify` that takes a string named `s` as a parameter and prints the string with enough leading spaces so that the last letter of the string is in column 70 of the display.

	Use string concatenation and repetition. Also, Julia provides a built-in function called `length`. Check what it does!

	""",
	questions = [Question(validators = statements, description = md"")]
)
	validate(qb3, tracker)
end

# ╔═╡ 87871f34-4ad1-11eb-3903-93e3f63ea14a
function rightjustify()
	missing
end

# ╔═╡ 448ef88e-4ad2-11eb-20d6-17a51d665ef9
function print_grid()
	missing
end

# ╔═╡ 14d50ee8-4ad3-11eb-3b81-9138aec66207
function print_big_grid()
	missing
end

# ╔═╡ 01eb4816-4ad2-11eb-3991-af76de0110c5
begin 
q4 = Question(validators = [print_grid() == "+ - - - - + - - - - +\n|         |         |\n|         |         |\n|         |         |\n|         |         |\n+ - - - - + - - - - +\n|         |         |\n|         |         |\n|         |         |\n|         |         |\n+ - - - - + - - - - +"], 
		description = md"")

oq1 = QuestionOptional{Easy}(validators = [print_big_grid() == "+ - - - - + - - - - + - - - - + - - - - +\n|         |         |         |         |\n|         |         |         |         |\n|         |         |         |         |\n|         |         |         |         |\n+ - - - - + - - - - + - - - - + - - - - +\n|         |         |         |         |\n|         |         |         |         |\n|         |         |         |         |\n|         |         |         |         |\n+ - - - - + - - - - + - - - - + - - - - +\n|         |         |         |         |\n|         |         |         |         |\n|         |         |         |         |\n|         |         |         |         |\n+ - - - - + - - - - + - - - - + - - - - +\n|         |         |         |         |\n|         |         |         |         |\n|         |         |         |         |\n|         |         |         |         |\n+ - - - - + - - - - + - - - - + - - - - +"], 
		description = md"Write a function that draws a similar grid with four rows and four columns.")
	
qb4 = QuestionBlock(;
	title=md"**Question 5: grid print**",
	description = md"""
	Complete the function `printgrid` that draws a grid like the following:
	```
	+ - - - - + - - - - +
	|         |         |
	|         |         |
	|         |         |
	|         |         |
	+ - - - - + - - - - +
	|         |         |
	|         |         |
	|         |         |
	|         |         |
	+ - - - - + - - - - +
	```

	""", questions = [q4, oq1], 
		hints=[
				hint(md"""The function `print` does not advance to the next line."""),
				hint(md"""To print more than one value on a line, you can print a comma-separated sequence of values:

`println("+", "-")`
""")
			]
	)
	validate(qb4, tracker)
end

# ╔═╡ c34ede1c-4ad4-11eb-050f-bb07c5d19c1c
begin 
qb6 = QuestionBlock(;
	title=md"**Question 6: time is relative**",
	description = md"""
The function `time` returns the current Greenwich Mean Time in seconds since "the epoch", which is an arbitrary time used as a reference point. On UNIX systems, the epoch is 1 January 1970.
Write a script that reads the current time and converts it to a time of day in hours, minutes, and seconds, plus the number of days since the epoch.
	""",
	questions = [Question(validators = [], description = md"")]
)
	validate(qb6, tracker)
end

# ╔═╡ 0c306fd8-4ad5-11eb-1a9f-2d3d1e838a77
function since_epoch()
	return days, hours, minutes, seconds
end

# ╔═╡ e99d6b96-4ad5-11eb-2144-f97a97e71ae4
begin 
	
q7 = Question(;
	description=md"""
1. Write a function named `checkfermat` that takes four parameters ($a$, $b$, $c$ and $n$) and checks to see if Fermat’s theorem holds. If $n$ is greater than 2 and $a^n + b^n == c^n$ the program should print, "Holy smokes, Fermat was wrong!" Otherwise the program should print, "No, that doesn’t work.""",
	validators = []		
)
	
q8 = Question(;
	description=md"""
2. Write a function that prompts the user to input values for $a$, $b$, $c$ and $n$, converts them to integers, and uses checkfermat to check whether they violate Fermat’s theorem.""",
	validators = []		
)
	
q9 = QuestionOptional{Easy}(;
	description=md"""
3. Can you write the code so that the functions in 4.1 and 4.2 have the same name?""",
	validators = []		
)
	
	
	
qb7 = QuestionBlock(;
	title=md"**Question 7: Fermat's Last Theorem**",
	description = md"""
Fermat’s Last Theorem says that there are no positive integers $a$, $b$, and $c$ such that

$a^n + b^n = c^n$

for any value of $n$ greater than 2.""",
	questions = [q7, q8, q9],
	hints=[
			hint(md"check the functions `readline` and `parse`."),
			hint(md"You can write multiple function with the same name but with a different number of input arguments. So you can write a second version of `checkfermat` with no input arguments for a prompting version. Depending on the number and the type of the arguments, Julia will choose the appropriate version of `checkfermat`. This mechanism is called multiple dispatch, more on this further in the course.")
			])
	validate(qb7, tracker)
end

# ╔═╡ Cell order:
# ╟─f089cbaa-4ab9-11eb-09d1-05f49911487f
# ╠═e97e5984-4ab9-11eb-3efb-9f54c6c307dd
# ╠═fd21a9fa-4ab9-11eb-05e9-0d0963826b9f
# ╟─0f47f5b2-4aba-11eb-2e5a-b10407e3f928
# ╠═23d3c9cc-4abd-11eb-0cb0-21673effee6c
# ╠═62c3b076-4ab7-11eb-0cf2-25cdf7d2540d
# ╠═7bf5bdbe-4ab7-11eb-0d4b-c116e02cb9d9
# ╠═83306610-4ab7-11eb-3eb5-55a465e0abb9
# ╠═83311b8a-4ab7-11eb-0067-e57ceabdfe9d
# ╠═833dbc66-4ab7-11eb-216d-f9900f95deb8
# ╠═8342c042-4ab7-11eb-2136-497fc9e1b9c4
# ╠═834d4cbc-4ab7-11eb-1f1a-df05b0c00d66
# ╠═8360ffac-4ab7-11eb-1162-f7a536eb0765
# ╠═8365cb3e-4ab7-11eb-05c0-85f51cc9b018
# ╠═8370eaf0-4ab7-11eb-1cd3-dfeec9341c4b
# ╠═8383f104-4ab7-11eb-38a5-33e59b1591f6
# ╠═8387934a-4ab7-11eb-11b2-471b08d87b31
# ╠═8c14cb9a-4ab7-11eb-0666-b1d4aca00f97
# ╠═93b5a126-4ab7-11eb-2f67-290ed869d44a
# ╠═962ae6d2-4ab7-11eb-14a2-c76a2221f544
# ╠═98d48302-4ab7-11eb-2397-710d0ae425f7
# ╠═cee8a766-4ab7-11eb-2bc7-898df2c9b1ff
# ╠═e2c5b558-4ab7-11eb-09be-b354fc56cc6e
# ╠═ec754104-4ab7-11eb-2a44-557e4304dd43
# ╠═f23a2d2a-4ab7-11eb-1e26-bb2d1d19829f
# ╠═fa836e88-4ab7-11eb-0ba6-5fc7372f32ab
# ╠═0138ef46-4ab8-11eb-1813-55594927d661
# ╠═0b73d66a-4ab8-11eb-06e9-bbe95285a69f
# ╠═6b6eb954-4ab8-11eb-17f9-ef3445d359a3
# ╠═94e3eb74-4ab8-11eb-1b27-573dd2f02b1d
# ╠═7592f8a2-4ac0-11eb-375c-61c915380eeb
# ╠═abf00a78-4ab8-11eb-1063-1bf4905ca250
# ╠═be220a48-4ab8-11eb-1cd4-db99cd9db066
# ╠═cadaf948-4ab8-11eb-3110-259768055e85
# ╠═cadb506e-4ab8-11eb-23ed-2d5f88fd30b0
# ╠═caf56346-4ab8-11eb-38f5-41336c5b45a7
# ╠═046133a8-4ab9-11eb-0591-9de27d85bbca
# ╠═0c8bc7f0-4ab9-11eb-1c73-b7ec002c4155
# ╠═0f8a311e-4ab9-11eb-1b64-cd62b65c49bf
# ╠═0f8a5e94-4ab9-11eb-170b-cfec74d6ebbc
# ╠═0f96fdd6-4ab9-11eb-0e33-2719394a66ba
# ╠═1f255304-4ab9-11eb-34f1-270fd5a95256
# ╠═34a18900-4ab9-11eb-17a0-1168dd9d06f9
# ╠═39a0a328-4ab9-11eb-0f37-6717095b56aa
# ╠═4749f268-4ab9-11eb-15a7-579437e0bd20
# ╠═5a9bbbe6-4aba-11eb-3652-43eb7891f437
# ╠═6bdc8a5e-4aba-11eb-263c-df3af7afa517
# ╠═a69ead46-4abc-11eb-3d1d-eb1c73f65150
# ╠═b482b998-4abc-11eb-36da-379010485bfa
# ╠═07b103ae-4abd-11eb-311b-278d1e033642
# ╠═15f8b7fe-4abd-11eb-2777-8fc8bf9d342e
# ╠═18f99e46-4abd-11eb-20a8-859cb1b12fe3
# ╠═3a7954da-4abd-11eb-3c5b-858054b4d06b
# ╠═8b17d538-4abd-11eb-0543-ab95c9548d6f
# ╠═91a9d1a0-4abd-11eb-3337-71983f32b6ae
# ╠═942d4202-4abd-11eb-1f01-dfe3df40a5b7
# ╠═942dae0e-4abd-11eb-20a2-37d9c9882ba8
# ╠═943d9850-4abd-11eb-1cbc-a1bef988c910
# ╠═943de2ce-4abd-11eb-2410-31382ae9c74f
# ╠═9460c03c-4abd-11eb-0d60-4d8aeb5b0c1d
# ╠═946161f4-4abd-11eb-0ec5-df225dc140d0
# ╠═947d143a-4abd-11eb-067d-dff955c90407
# ╠═947fea8e-4abd-11eb-1d6a-2bc540f7a50e
# ╠═948eff10-4abd-11eb-36d0-5183e882a9e2
# ╠═948f5032-4abd-11eb-3d1c-7da4cb64521c
# ╠═94b520e6-4abd-11eb-3161-addf3b0e4f24
# ╠═94b78322-4abd-11eb-3006-454548efd164
# ╠═94d28c80-4abd-11eb-08c0-717207e4c682
# ╟─9fe6e1a2-4abd-11eb-0c39-458ce94265c0
# ╠═ae26ab9e-4abd-11eb-3270-33558dbdf663
# ╠═b08dc886-4abd-11eb-1807-096a7e6fd6f9
# ╠═b08e3a28-4abd-11eb-258a-a5a93b4b882c
# ╠═b0a8dfe0-4abd-11eb-167d-2fc3974c7c92
# ╠═b0a97e00-4abd-11eb-371c-e138aea17bb6
# ╠═b0ccc252-4abd-11eb-048b-4bec3750bbf1
# ╠═bd446c42-4abd-11eb-0465-d9a61c48ff48
# ╠═1c5975ec-4abe-11eb-0ff0-bfb2f03a520b
# ╠═1c22b880-4abf-11eb-3f18-756c1198ccad
# ╠═37086212-4abf-11eb-3ec9-7f8dae57121e
# ╠═489421d8-4abf-11eb-0d5e-fd779cc918a1
# ╠═6736dafe-4abf-11eb-1fce-0716d2b7f4a8
# ╠═8933033a-4abf-11eb-1156-a53a5ee9152c
# ╠═0c693c24-4ac0-11eb-2329-c743dcc5039d
# ╠═035a53ba-4ac1-11eb-3c34-b50a803b7b7d
# ╠═2a5fca7c-4ac0-11eb-33a3-23d972ca27b8
# ╠═3896642a-4ac0-11eb-2c7c-4f376ab82217
# ╠═3ef3faf8-4ac0-11eb-1965-fd23413e29f3
# ╠═4118016e-4ac0-11eb-18bf-5de326782c87
# ╠═4119fbca-4ac0-11eb-1ea9-0bdd324214c5
# ╠═4139bf3c-4ac0-11eb-2b63-77a513149351
# ╠═a1d4127c-4ac0-11eb-116f-79c6ee58f524
# ╠═a93b28e6-4ac0-11eb-074f-a7b64f43a194
# ╠═ac35b796-4ac0-11eb-3bc5-5ff4350d5452
# ╠═b18e55ae-4ac0-11eb-1455-21b83b7c61d5
# ╠═ec4190a8-4ac0-11eb-0421-398f063775bb
# ╠═fdb67aba-4ac0-11eb-1d4a-c354de54baa9
# ╠═28f47a24-4ac1-11eb-271f-6b4de7311db3
# ╠═3e433ab4-4ac1-11eb-2178-53b7220fa9ab
# ╠═46112c44-4ac1-11eb-2ad8-030406c7cf67
# ╠═461489fa-4ac1-11eb-0596-1d3bedb61778
# ╠═47338c78-4ac1-11eb-04d6-35c2361eaea6
# ╠═463689b0-4ac1-11eb-1b0f-b7a239011c5c
# ╟─52bfff04-4ac1-11eb-1216-25eedd9184c3
# ╠═61846dae-4ac1-11eb-389a-4fbe3f6145b1
# ╠═6321ae1a-4ac1-11eb-04cb-33e939694874
# ╠═7b874424-4ac1-11eb-2d4e-0b4607559b8f
# ╠═86defe2a-4ac1-11eb-3c01-c5e671877212
# ╠═886512de-4ac1-11eb-00e1-73292ec23277
# ╠═88678820-4ac1-11eb-272e-0df61e418900
# ╠═888dee1e-4ac1-11eb-264d-cd4a4f30f498
# ╠═8acb086c-4ac1-11eb-1715-756fde34b38f
# ╠═944e1aaa-4ac1-11eb-0e23-41b1c5d0e889
# ╠═9d4e11be-4ac1-11eb-1fa0-13f1fe60c3bc
# ╠═9d514ef6-4ac1-11eb-25fc-ffaa2dcc9b02
# ╠═a0781222-4ac1-11eb-3425-d9b9603487f3
# ╠═a6b95d62-4ac1-11eb-0c93-7fa0f6a120d5
# ╠═ab006064-4ac1-11eb-32be-6557b8d45f32
# ╠═b0603566-4ac1-11eb-17bc-3b63cd2aa1e9
# ╠═beafce06-4ac1-11eb-2431-1ffeba45716b
# ╠═ec487488-4ac1-11eb-1be3-a93e41f78bf3
# ╠═f88fee6c-4ac1-11eb-1671-43493122f061
# ╠═fa759f92-4ac1-11eb-0d72-1f9d6d38a831
# ╠═fa7ba458-4ac1-11eb-2ca1-59ff3c032b26
# ╠═fa9b3266-4ac1-11eb-153a-87c6a1124890
# ╠═fa9d43b2-4ac1-11eb-33fc-a37503cedabf
# ╠═fd171e0e-4ac1-11eb-09ea-337d17500149
# ╠═10e71260-4ac2-11eb-1069-55613ee7df0a
# ╠═1c0230f8-4ac2-11eb-32aa-e7a4b2ae9cff
# ╠═226417c2-4ac2-11eb-2914-196461e2b40e
# ╠═3daf4fa6-4ac2-11eb-0541-b98c2e97dfe4
# ╠═4ca70e9c-4dfb-11eb-0e57-b9362a5157b7
# ╠═6daa0b36-4dfb-11eb-2b8e-43f1b6564680
# ╠═083b368e-4dfc-11eb-13a8-0d8d2ca161b6
# ╠═028376fe-4dfc-11eb-3d29-3d18759799c9
# ╠═11c1c666-4dfc-11eb-327a-271a7cf37b02
# ╠═1dc7c9ce-4dfc-11eb-30c6-1b29da17c7a9
# ╠═1dc97602-4dfc-11eb-1800-f37b2edb701c
# ╠═1df39716-4dfc-11eb-1e5a-b344adaef713
# ╠═1dfbf208-4dfc-11eb-278e-a5cb40df21d0
# ╠═4fd8a348-4dfc-11eb-26e7-0b733016b07b
# ╠═57fc9a0c-4dfc-11eb-3b9c-73250784230c
# ╠═68be2310-4dfc-11eb-014c-5366cc45800b
# ╠═68c0007c-4dfc-11eb-1b20-d1ad5e21fd3c
# ╠═68e7573a-4dfc-11eb-1bf2-89e86cb08bba
# ╠═68e99f9a-4dfc-11eb-2154-b743468021c7
# ╠═6912c618-4dfc-11eb-3f5d-a78a74e3b129
# ╠═74f5b850-4dfc-11eb-162d-b97f69c209ed
# ╠═71aa7bf4-4dfc-11eb-201f-874fc848818a
# ╠═7f6facfa-4dfc-11eb-1ee6-95e96448eca0
# ╠═7f740822-4dfc-11eb-1701-cd30df64e1c9
# ╠═7f9dfd76-4dfc-11eb-374d-1bd1aabd1c9d
# ╠═85230c14-4dfc-11eb-3c65-a372ea9dc871
# ╠═92f53cb8-4dfc-11eb-10c8-878c33a3c1f3
# ╠═9d6a6718-4dfc-11eb-14f6-6d80c7397634
# ╠═9d708210-4dfc-11eb-3031-657e88a7fb9e
# ╠═9d9c52aa-4dfc-11eb-19ea-018ddbe7f2fe
# ╠═9da18914-4dfc-11eb-1c4c-a1f688abfedc
# ╠═9dd4cc98-4dfc-11eb-38ef-07672461451c
# ╠═d37a5912-4dfc-11eb-339a-c915c4098022
# ╠═d94aa4be-4dfc-11eb-1f59-c94da06c713e
# ╠═eaa12d64-4dfc-11eb-2d9f-751ec57f1167
# ╠═f91efcf4-4dfc-11eb-239b-f3c71b8f437a
# ╠═f925958c-4dfc-11eb-39e3-bf1ce5a80ab7
# ╠═f951de94-4dfc-11eb-035f-5d50625cf4af
# ╠═f95742b2-4dfc-11eb-08d6-adf9ec471791
# ╠═f98bdb62-4dfc-11eb-16d8-db21b9dc2439
# ╠═35907758-4dfd-11eb-126b-edfbad7a8772
# ╠═3b7855fa-4dfd-11eb-3a79-cb98f64e2649
# ╠═7d00a4be-4dfd-11eb-1355-1b2b5a2cb316
# ╠═8c324398-4dfd-11eb-0856-47819528e5ea
# ╠═8e31c0c4-4dfd-11eb-3334-313cd26f6910
# ╠═ec58e588-4dfd-11eb-12bb-e3ec16bc58b6
# ╠═05802832-4dfe-11eb-17b7-6f506bd0f334
# ╠═cefc4ac2-4e00-11eb-23c0-4fff96552b3c
# ╠═6da71180-4ac2-11eb-1cac-410bd1cce70c
# ╠═85b96ff0-4ac2-11eb-077f-cf4aad8a3c24
# ╠═a11c2898-4ac2-11eb-24d3-6f8060b5fd65
# ╠═a686e67e-4ac2-11eb-228e-23524a3ddc59
# ╠═ad156892-4ac2-11eb-3634-a3783231e5a1
# ╠═bf1385da-4ac2-11eb-3992-41abac921370
# ╠═d779956a-4ac2-11eb-39de-4b3cecace452
# ╠═c7d2a048-4ac2-11eb-3902-b7c8505096ae
# ╠═cf35b2b2-4ac2-11eb-1ae6-5d3c108210df
# ╠═d1010f88-4ac2-11eb-0fa9-0902fef0cf9f
# ╠═19e74adc-4ac3-11eb-239f-7b0132287466
# ╠═0e63d722-4ac3-11eb-3740-d31b47a77912
# ╠═42f24f58-4ac3-11eb-06b5-ebc015c17520
# ╠═87871f34-4ad1-11eb-3903-93e3f63ea14a
# ╠═01eb4816-4ad2-11eb-3991-af76de0110c5
# ╠═448ef88e-4ad2-11eb-20d6-17a51d665ef9
# ╠═14d50ee8-4ad3-11eb-3b81-9138aec66207
# ╠═c34ede1c-4ad4-11eb-050f-bb07c5d19c1c
# ╠═0c306fd8-4ad5-11eb-1a9f-2d3d1e838a77
# ╠═e99d6b96-4ad5-11eb-2144-f97a97e71ae4
