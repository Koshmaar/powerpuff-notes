
# Architecture

## Services

Microservice called PowerpuffNotesBackend is serving REST API:
- Django
- Django Rest Framework


## Database table design 0.1

Table Notes:
- id: integer?
- title: string
- content: string
- created_at: datetime
- last_edit: datetime
- background_color: string
- author: email ?


## Database table design 0.4


Table Notes:
- id: 
- name: string
- content: string
- editions: list[datetime]

The **editions** field contains ordered list of datetimes, associated with each line.

## Algorithm for managing editions

Imagine note created on 7th:

1: 2001-11-07:  A  
2: 2001-11-07:  B 
3: 2001-11-07:  C

If user edits any letter in line, its date is updated.
If he adds newline, on 9th, only new line has updated date: 

1: 2001-11-07:  A  
2: 2001-11-07:  B
2: 2001-11-09:   
3: 2001-11-07:  C

So effectively end-of-line chars should be skipped from being taken into consideration.


## Security

### Ver 0.1+

Notes are stored in tables unencrypted.


