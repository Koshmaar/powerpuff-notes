# powerpuff-notes

Cloud application for keeping personal notes with additional powers:
1. Automatic repeating of notes
2. Dense versioning
3. Scripting and graphing charts

Explanation and use cases for above:

1. Imagine you are paying few different types of taxes every month, issuing invoice,
sending email to accountant etc, and you want to be sure that everything is done. 
For that you create single note "Taxes {month} {year}" and add as todo list:
- pay PIT
- pay ZUS
- generate invoice for clients
- send invoices to accountant

Then add "Repeat: every month", and every month fresh new copy of Taxes will be created,
with names like "Taxes november 2022", with fresh 

You can also enable alarm for not finishing todo tasks, ie.
- pay PIT - "every 20th day"
- generate invoice for clients - "every 15th day"


2. Each line that you change is tracked with exact time and date of last edit.
Thanks to this, if in your "Video card" note you write line "my dream: <url> price 1999 PLN",
few weeks later you can see exactly when did this video card cost that much. 
That makes it easy to compare if price goes up or down.

3. Using JavaScript (or PythonScript?) allows to automate fetching certain data from
internet, ie. prices of certain goods, and not only saving them to note, but also
creating charts to improve understanding.


## Technical details

Backend: Python 3
Cloud: Google (App Engine)
DB: Postgres? Firebase?
Frontend: React or Vue


