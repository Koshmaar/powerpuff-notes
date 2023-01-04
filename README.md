# powerpuff-notes

Cloud application for keeping personal notes with additional powers:
1. Automatic repeating of notes
2. Dense versioning
3. Scripting and graphing charts

And obviously:
- Rich-edit text formatting (bold, italic, underline, in-line images). 
- Tagging
- Note sharing

Explanation and use cases for above:

1. Imagine you are paying few different types of taxes every month, issuing invoice,
sending email to accountant etc, and you want to be sure that everything is done. 
For that you create single note "Taxes {month} {year}" and add as todo list:
- pay PIT
- pay ZUS
- generate invoice for clients
- send invoices to accountant

Then add "Repeat: every month", and every month fresh new copy of Taxes will be created,
with names like "Taxes november 2022", with fresh checkboxes.

You can also enable alarm for not finishing todo tasks, ie.
- pay PIT - "every 20th day"
- generate invoice for clients - "every 15th day"

That way you won't forget about anything.

2. Each line that you change is tracked with exact time and date of last edit.
Thanks to this, if in your "Video card" note you write line "my dream: <url> price 1999 PLN",
few weeks later you can see exactly when did this video card cost that much. 
That makes it easy to compare if price goes up or down.

3. Using JavaScript (or PythonScript?) allows to automate fetching certain data from
internet, ie. prices of certain goods, and not only saving them to note, but also
creating charts to get quick visual understanding of data.


## Technical details

### Generic

- Cloud: Google (App Engine)
- Registration and login should be done by Google login.
- User data is kept on his Google Drive account.


## Plan

### POC 0.1 version

- Backend: Django
- Frontend: static html, Django forms

Features:
- View notes
- Create notes
- Delete notes
- Edit notes


### 0.4 version

Focus on frontend.
- add proper REST API urls to backend 
- Frontend: React or Vue

New features:
- Note dense versioning
- WYSIWYG editor
- Setting any color as note background

### 0.5 version

Focus on backend.
- Backend: Python 3 API, using FastAPI ?

New features:
- Support checkboxes

### 0.6 version

New features:
- Note repeating

### 0.7 version

New features:
- Tagging
- Pinning
- Archiving

### 0.8 version

New features:
- Search
- View sorted by date

### 0.9 version

New features:
- Reminders

### 1.0 version
Focus on cleaning UI and testing.

New features:
- Automation

### 1.1 version
Focus on security:
- encrypt notes backend side
- pentest

New features:
- attaching files
