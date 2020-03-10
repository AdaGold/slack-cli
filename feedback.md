# Slack CLI

<!-- Instructors: The checkmarks are already there, so just delete them for any line items that aren't met. -->

## Major Learning Goals/Code Review

<!-- Instructors: Feel free to practice creating specific feedback by referencing a line of code if you'd like. For example, you may say something like "nice custom method in `calculator.rb` line 42." This is optional. -->

| Criteria | yes/no, and optionally any details/lines of code to reference |
| --- | --- |
Practices best practices working with APIs. The `.env` is not checked into git, and no API token was directly used in the Ruby code without `ENV`. | ✔️?
Practices error handling with APIs. For all pieces of code that make an API call, it handles API requests that come back with errors/error status codes appropriately. | ✔️?
Implements inheritance and inheritance idioms. There is a `Recipient` class. `User` and `Channel` inherit from `Recipient`. In `Recipient`, there are appropriate methods defined that are used in both `User` and `Channel`. Some may be implemented. Some may be template methods. | ✔️?
Practices clean code. `lib/slack.rb` only interacts with `Workspace` to show a separation of responsibilities. Complex logic is broken into smaller helper methods. | ✔️?
Practices instance methods vs. class methods appropriately. The methods to list all Channels or Users is likely a class method within those respective classes. | ✔️?
Practices best practices for testing. The project has and uses VCR mocking when running tests, and can run offline. | ✔️?
Practices writing tests. The `User`, `Channel`, and `Workspace` classes have unit tests. | ✔️?
Practices writing tests. There are tests for sending messages (the location of these tests may differ, but is likely in `Recipient`) | ✔️?
Practices git with at least 15 small commits and meaningful commit messages | ✔️?

## Functional Requirements

| Functional Requirement | yes/no |
| --- | --- |
As a user of the CLI program, I can list users and channels | ✔️?
As a user of the CLI program, I can select users and channels | ✔️?
As a user of the CLI program, I can show the details of a selected user or channel | ✔️?
As a user of the CLI program, when I input something inappropriately, the program runs without crashing | ✔️?

## Overall Feedback

| Overall Feedback | Criteria | yes/no |
| --- | --- | --- |
| Green (Meets/Exceeds Standards) | 7+ in Code Review && 3+ in Functional Requirements |
| Yellow (Approaches Standards) | 6+ in Code Review && 2+ in Functional Requirements |
| Red (Not at Standard) | 0-5 in Code Review or 0,1 in Functional Reqs, or assignment is breaking/doesn’t run with less than 5 minutes of debugging |

<!-- ### Additional Feedback -->

<!-- Instructors, feel free to ignore this section if there's nothing else to add. -->

## Code Style Bonus Awards

<!-- Instructors: Please strike a balance between liberal/stingy with these. These are simply built-in pieces of positive feedback; use this to encourage and push students towards a cleaner code style! -->

Was the code particularly impressive in code style for any of these reasons (or more...?)

| Quality | Yes? |
| --- | --- |
| Perfect Indentation | ✅
| Elegant/Clever | ✅
| Descriptive/Readable | ✅
| Concise | ✅
| Logical/Organized | ✅
