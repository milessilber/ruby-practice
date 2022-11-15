# Take-Home Interview #3

Here's yet another take-home interview challenge. You know what to do.

## Exercise Instructions

Your submission should showcase your capabilities. We encourage you to be creative and play to your strengths. Use any language and platform you’re comfortable with and expound on any area which interests you - so long as the core requirements are implemented.

### Movie Theatre Scheduler

It's your first day on the job for a small town movie multiplex. The multiplex contains multiple screens, each playing a different movie throughout the day. Managing the schedule can be a difficult task as there are staffing considerations with regard to setup, cleaning, projector operation, ticket sales and line management.

Mildred has been manually doing the schedule to make sure things run smoothly, but she's planning to retire. Because the theatre is looking to add more screens, and possibly a second location, they'd like to design a system to handle the scheduling rather than rely on a person to do the job. Below are the rules Mildred provided upon being asked exactly how she schedules runtimes for each screen.

### Movie Rules

Here is a list of the rules for each viewing of a movie.

  - Each movie should start at easy to read times (eg 10:00, 10:05, 10:10).
  - The start time of the movie is exactly at the posted start time.
  - Each movie requires 15 minutes for previews before the start of the movie.
  - Each movie requires 20 minutes after its end time to prepare the theatre for the next movie.

### Theatre Rules

Here is a list of rules that are global to the cinema:

  - The cinema requires 15 minutes after opening before the first movie is shown.
  - No movie should end after the cinema’s hours of operation.
  - The last showing should end as close as possible to the end of the cinema’s hours of operation.

### Hours of Operation

The theatre has the following hours of operation:

- Monday - Thursday 11am - 11pm.
- Friday - Sunday 10:30 am - 12 am.

### Requirements

Your system should be able to take in the details of each movie and output a start and end time of each showing that abides by all of the provided rules. The runtime of each movie does not include time for previews or cleanup.

The method of input can be interactive (GUI/Web/CLI) or via a structured input file format. The output of the system can also be via display or writing output files.

### Example

Movies: 

  - There’s Something About Mary (1998). Rated R. 134 minutes
  - The Imitation Game (2014). Rated PG-13. 114 minutes
  - The Hateful Eight (2015). Rated R. 187 minutes
  - Liar Liar (1997). Rated PG-13. 86 minutes


Example Output:

```
Liar Liar
  Weekday
    1:10 PM - 2:36 PM
    3:15 PM - 4:41 PM
    5:20 PM - 6:46 PM
    7:25 PM - 8:51 PM
    9:30 PM - 10:56 PM
  Weekend
    12:05 PM - 1:31 PM
    2:10 PM - 3:36 PM
    4:15 PM - 5:41 PM
    6:20 PM - 7:46 PM
    8:25 PM - 9:51 PM
    10:30 PM - 11:56 PM
```

And so on . . .

## Committing to Github

To commit your code to Github, you can run the following set of commands in the terminal:

```
git add --all
git commit -m "your commit message goes in between these quotation marks"
git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```