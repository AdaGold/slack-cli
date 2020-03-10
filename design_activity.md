# Slack CLI Design Activity

In this exercise, you will work with your partner to come up with a design for the Slack API project. Once you have a design, we will provide our design, giving you a chance to compare and contrast the two.

While we encourage you to use the provided design for this project, there is much to be gained from going through the design process _before_ seeing our version.

## Learning Goals

- Practice the object-oriented design process
- Compare and contrast different designs for the same program
- Implement a program from a provided UML diagram

## First Draft Design

1. Read through the project requirements with your partner, then follow our standard [object-oriented design process](https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/02-intermediate-ruby/oo-design.md).
    - What are the nouns, and how are they composed into objects and relations?
    - What are the verbs, and which verb belongs with which object?
2. From above, we are leading you to certain classes and dependencies. We want `lib/slack.rb` to have only **one dependency**: `Workspace`. We want `Workspace` to have at least two dependencies: `User` and `Channel`. We want `Workspace` to have many `User`s (composition). Also, we want `Workspace` to have many `Channel`s (composition). After reading through the requirements:
  - What verbs are associated with `User`? 
  - What verbs are associated with `Channel`? 
  - What's **similar**? 
  - What's **different**?
3. The `User` and `Channel` classes have similar enough verbs and responsibilities, that we could design them to have inheritance relationships. 
  - What ideas can you come up with? 
  - What would the common behaviors/methods be named?

Create a rough UML diagram for your design's first draft.

## Compare With Another Design

<details>
<summary>Once you have a first draft of your design, click here to see the UML for one instructor implementation.</summary>

![Instructor Design](images/instructor-design.png)

Note that only public methods and attributes are shown.

<!-- https://www.draw.io/#G15pbTY4VOpswPf_TqNqy7ea-PYsPUmg6L -->

</details>

### Reflect

With your partner, answer the following questions about the above design:

- What classes exist?
  - Why? What are they named, what do they represent, and what state and behavior do they have?
- What _composition_ relations exist between objects in this design?
- What _inheritance_ relations exist between objects in this design?
- What parts of this design inspires you, and you want to steal?
- What parts of this design are you unsure about, and need to consider again later?
- What parts of this design do you think you can do without?

<details>

  <summary>Final Design Question: What class(es) should `slack.rb` interact with/depend on?</summary>

`slack.rb` should only interact with one class, `Workspace`.

We want to minimize the number of classes it depends on if possible.

The `slack.rb` file should not create, call, or use the `User`, `Channel`, or `Recipient` classes at all. The `slack.rb` file should mainly be interacting with the instance of `Workspace` created in the line `workspace = Workspace.new`. All `User`-related information that `slack.rb` receives should be returned from calling a method defined in the `Workspace` class.

</details>

### What If I Don't Understand The Design?

There's a chance that there are things about this design that aren't very clear as to _why_ they are beneficial.

1. If you're unsure about if you need users and channels to inherit from `Recipient`, try implementing the project without inheriting from `Recipient` first!
    - Then, afterwards, check to see if you can refactor `User` and `Channel` to inherit from a new `Recipient` class. It will be more visible as to _why_ inheritance can be useful after users and channels have been built out, and you can see what the two classes have in common.
1. If you're unsure about what some methods mean in our UML diagram (what does `get` do? Why is `self.list_all` a class method?), then try implementing the project without those method names first. Then, refactor your method names to see if they can match up with ours. Method names are hard; sometimes it's not very obvious what they're doing until you have to make a GET request. 😉

## Wrap-up

We encourage you to use our design for this project, at least as a starting point. However, if there are changes you need to make, particularly things like helper methods or extra attributes, you are welcome to do so. It's your project, after all.
