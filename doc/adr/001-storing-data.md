
# 001 Architectural Design Record - Storing data

## Option 1 - google drive

Use google drive, to store user file.
The file would be .sqlite, for easier working with table data.

When user logs to service, his powerpuff-notes.sqlite could be downloaded to:
a) frontend
b) backend

Let's discuss option a) frontend:
It requires javascript code to handle .sqlite file in memory, which might not be easy.
Then when editing is finished (or regularly every 15s), it is uploaded to google drive. 

- doesn't support simultaneous work on few different devices
+ faster, speed of editing is essentially like on localhost
- most of the application code has to be done in javascript

Option b) backend, requires backend to store the .sqlite file in memory or on disk,
as long as user is logged in.
+ could support simultaneous work from few different devices
- would be slower, as would have to constantly synchronize state (either full file or diffs), which is complex

Both options have pros:
+ privacy (a bit less in B)
+ could exchange google drive to other cloud, or even normal server


## Option 2 - google cloud sql

- less privacy, as the user private data is stored on shared infrastructure
+ could use typical frontend/backend architecture
+ could use standard sql server
+ could exchange google drive to other cloud, or even normal server


## Decision - option 2

For simplifying implementation, and to reduce unknowns, I've chosen option 2.
